(function(window) {
  if (typeof window.gsap !== 'undefined' && typeof window.ScrollTrigger !== 'undefined') {
    window.gsap.registerPlugin(window.ScrollTrigger);
  }

  const { useEffect, useId, useLayoutEffect, useMemo, useRef, useState, createElement: h } = window.React;

  const DEFAULT_TEXT = 'Draw Attention';

  const StrokeText = ({
    text = DEFAULT_TEXT,
    strokeColor = '#A78BFA',
    fillColor = '#F8FAFC',
    strokeWidth = 1.4,
    drawDuration = 1.6,
    fillDelay = 0.2,
    stagger = 0.05,
    ease = 'power2.out',
    trigger = 'mount',
    fillMode = 'wipe',
    fontSize = 128,
    fontWeight = 800,
    letterSpacing = -4,
    reverse = false,
    className = '',
    style = {}
  }) => {
    const rootRef = useRef(null);
    const strokeTextRef = useRef(null);
    const wipeRectRef = useRef(null);

    const [box, setBox] = useState(null);

    const rawId = typeof useId === 'function' ? useId() : 'id_' + Math.random().toString(36).substr(2, 9);
    const wipeId = `stroke-text-wipe-${String(rawId).replace(/[^a-zA-Z0-9_-]/g, '')}`;

    const characters = useMemo(() => Array.from(String(text ?? '')), [text]);

    const dash = Math.max(fontSize * 7, 200);

    const fontStyle = useMemo(
      () => ({
        fontSize: `${fontSize}px`,
        fontWeight,
        letterSpacing: `${letterSpacing}px`
      }),
      [fontSize, fontWeight, letterSpacing]
    );

    useLayoutEffect(() => {
      const node = strokeTextRef.current;
      if (!node) return undefined;

      let cancelled = false;

      const measure = () => {
        if (cancelled || !strokeTextRef.current) return;
        let bbox;
        try {
          bbox = strokeTextRef.current.getBBox();
        } catch (err) {
          return;
        }
        if (!bbox || !bbox.width) return;

        const pad = Math.max(Number(strokeWidth) || 1, fontSize * 0.1);
        const next = {
          x: bbox.x - pad,
          y: bbox.y - pad,
          width: bbox.width + pad * 2,
          height: bbox.height + pad * 2
        };

        setBox(prev =>
          prev &&
          Math.abs(prev.x - next.x) < 0.5 &&
          Math.abs(prev.width - next.width) < 0.5 &&
          Math.abs(prev.y - next.y) < 0.5
            ? prev
            : next
        );
      };

      measure();
      if (typeof document !== 'undefined' && document.fonts && document.fonts.ready) {
        document.fonts.ready.then(measure).catch(() => {});
      }

      return () => {
        cancelled = true;
      };
    }, [characters, fontSize, fontWeight, letterSpacing, strokeWidth]);

    useEffect(() => {
      const root = rootRef.current;
      if (typeof window === 'undefined' || !root || !box) return undefined;

      const strokes = window.gsap.utils.toArray(root.querySelectorAll('[data-stroke-char]'));
      const fills = window.gsap.utils.toArray(root.querySelectorAll('[data-fill-char]'));
      const wipe = wipeRectRef.current;
      if (!strokes.length) return undefined;

      const fillEnabled = fillMode !== 'none';
      const useWipe = fillEnabled && fillMode === 'wipe';
      const fillDuration = Math.max(0.4, drawDuration * 0.5);
      const staggerConfig = reverse ? { each: stagger, from: 'end' } : stagger;
      const targets = [...strokes, ...fills, wipe].filter(Boolean);

      const setStart = () => {
        window.gsap.killTweensOf(targets);
        window.gsap.set(strokes, { strokeDasharray: dash, strokeDashoffset: dash });
        window.gsap.set(fills, { opacity: useWipe ? 1 : 0 });
        if (wipe) window.gsap.set(wipe, { attr: { width: 0 } });
      };

      const setEnd = () => {
        window.gsap.killTweensOf(targets);
        window.gsap.set(strokes, { strokeDasharray: dash, strokeDashoffset: 0 });
        window.gsap.set(fills, { opacity: fillEnabled ? 1 : 0 });
        if (wipe) window.gsap.set(wipe, { attr: { width: fillEnabled ? box.width : 0 } });
      };

      const prefersReducedMotion = window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches;
      if (prefersReducedMotion) {
        setEnd();
        return () => window.gsap.killTweensOf(targets);
      }

      const build = () => {
        setStart();
        const tl = window.gsap.timeline({
          paused: true,
          repeat: trigger === 'loop' ? -1 : 0,
          repeatDelay: trigger === 'loop' ? 0.9 : 0,
          defaults: { overwrite: 'auto' }
        });

        tl.to(strokes, { strokeDashoffset: 0, duration: drawDuration, ease, stagger: staggerConfig }, 0);

        if (useWipe && wipe) {
          tl.to(
            wipe,
            { attr: { width: box.width }, duration: fillDuration, ease: 'power2.inOut' },
            drawDuration + fillDelay
          );
        } else if (fillEnabled) {
          tl.to(
            fills,
            { opacity: 1, duration: fillDuration, ease: 'power2.out', stagger: staggerConfig },
            drawDuration + fillDelay
          );
        }

        return tl;
      };

      let timeline = null;
      let scrollTrigger = null;
      let removeHover = null;

      if (trigger === 'hover') {
        setEnd();
        const play = () => {
          if (timeline) timeline.kill();
          timeline = build();
          timeline.play(0);
        };
        root.addEventListener('pointerenter', play);
        removeHover = () => root.removeEventListener('pointerenter', play);
      } else {
        timeline = build();
        if (trigger === 'scroll' && window.ScrollTrigger) {
          scrollTrigger = window.ScrollTrigger.create({
            trigger: root,
            start: 'top 82%',
            once: true,
            onEnter: () => { if (timeline) timeline.play(0); }
          });
        } else {
          timeline.play(0);
        }
      }

      return () => {
        if (removeHover) removeHover();
        if (scrollTrigger) scrollTrigger.kill();
        if (timeline) timeline.kill();
        window.gsap.killTweensOf(targets);
      };
    }, [box, dash, drawDuration, fillDelay, stagger, ease, trigger, fillMode, reverse]);

    const viewBox = box ? `${box.x} ${box.y} ${box.width} ${box.height}` : `0 ${-fontSize} 600 ${fontSize * 1.3}`;

    return h(
      'span',
      {
        ref: rootRef,
        className: `stroke-text ${trigger === 'hover' ? 'stroke-text--hover' : ''} ${className}`.trim(),
        style: Object.assign({}, style, { '--stroke-text-height': `${Math.round(fontSize * 1.3)}px` }),
        role: 'img',
        'aria-label': String(text ?? '')
      },
      h(
        'svg',
        {
          className: 'stroke-text__svg',
          viewBox: viewBox,
          preserveAspectRatio: 'xMidYMid meet',
          'aria-hidden': 'true'
        },
        fillMode === 'wipe' && box
          ? h(
              'defs',
              null,
              h(
                'clipPath',
                { id: wipeId, clipPathUnits: 'userSpaceOnUse' },
                h('rect', { ref: wipeRectRef, x: box.x, y: box.y, width: 0, height: box.height })
              )
            )
          : null,
        h(
          'text',
          {
            ref: strokeTextRef,
            className: 'stroke-text__stroke',
            x: 0,
            y: 0,
            fill: 'none',
            stroke: strokeColor,
            strokeWidth: strokeWidth,
            strokeLinejoin: 'round',
            strokeLinecap: 'round',
            style: fontStyle
          },
          characters.map((char, index) =>
            h('tspan', { 'data-stroke-char': true, key: `s-${index}` }, char)
          )
        ),
        h(
          'text',
          {
            className: 'stroke-text__fill',
            x: 0,
            y: 0,
            fill: fillColor,
            stroke: 'none',
            style: fontStyle,
            clipPath: fillMode === 'wipe' && box ? `url(#${wipeId})` : undefined
          },
          characters.map((char, index) =>
            h('tspan', { 'data-fill-char': true, key: `f-${index}` }, char)
          )
        )
      )
    );
  };

  window.StrokeText = StrokeText;

  function mountStrokeTexts() {
    const loginMountNode = document.getElementById('stroke-text-root');
    if (loginMountNode && window.ReactDOM && !loginMountNode.dataset.mounted) {
      loginMountNode.dataset.mounted = 'true';
      const root = window.ReactDOM.createRoot(loginMountNode);
      root.render(
        h(StrokeText, {
          text: 'cavatta college',
          strokeColor: '#A78BFA',
          fillColor: '#F8FAFC',
          strokeWidth: 1.4,
          drawDuration: 1.6,
          fillDelay: 0.2,
          stagger: 0.05,
          ease: 'power2.out',
          trigger: 'mount',
          fillMode: 'wipe',
          fontSize: 64,
          fontWeight: 800,
          letterSpacing: -2
        })
      );
    }

    const homeMountNode = document.getElementById('home-stroke-text-root');
    if (homeMountNode && window.ReactDOM && !homeMountNode.dataset.mounted) {
      homeMountNode.dataset.mounted = 'true';
      const w = typeof window !== 'undefined' ? window.innerWidth : 1000;
      const fs = w < 480 ? 44 : w < 768 ? 62 : w < 1024 ? 82 : 96;
      const root = window.ReactDOM.createRoot(homeMountNode);
      root.render(
        h(StrokeText, {
          text: 'cavatta college',
          strokeColor: '#f472b6',
          fillColor: '#F8FAFC',
          strokeWidth: 1.8,
          drawDuration: 1.8,
          fillDelay: 0.25,
          stagger: 0.06,
          ease: 'power2.out',
          trigger: 'mount',
          fillMode: 'wipe',
          fontSize: fs,
          fontWeight: 900,
          letterSpacing: -2
        })
      );
    }
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', mountStrokeTexts);
  } else {
    mountStrokeTexts();
  }
})(window);

