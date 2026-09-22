(function (window) {
  const React = window.React;
  if (!React) return;

  const { createElement: h } = React;

  const FounderSection = ({
    backgroundSrc = 'images/founder_bg.jpg',
    portraitSrc = 'images/founder.png',
    className = ''
  }) => {
    const FoldTextComponent = window.FoldText;
    const descriptionText =
      'Founder of a fast-growing cavatta college. Educationalist, contractor, and agile scaling. Passionate about money-first student-last projects.';

    return h(
      'section',
      {
        className: `founder-section ${className}`.trim(),
        'aria-label': 'Founder of Cavatta College'
      },
      h('div', {
        className: 'founder-background',
        style: { '--founder-bg-url': `url(${backgroundSrc})` }
      }),
      h('div', { className: 'founder-overlay' }),
      h(
        'div',
        { className: 'founder-content' },
        h(
          'div',
          { className: 'founder-copy' },
          h('span', { className: 'founder-eyebrow' }, 'Meet'),
          FoldTextComponent
            ? h(FoldTextComponent, {
                text: 'Cavatta Al\u2011Hakim',
                splitBy: 'char',
                hinge: 'top',
                trigger: 'scroll',
                duration: 0.65,
                stagger: 0.045,
                ease: 'power3.out',
                perspective: 700,
                creaseShading: 0.55,
                fontSize: 'clamp(1.6rem, 3.8vw, 3.8rem)',
                fontWeight: 700,
                color: '#ffde03',
                className: 'founder-title'
              })
            : h('h2', { className: 'founder-title' }, 'Cavatta Al\u2011Hakim'),
          FoldTextComponent
            ? h(FoldTextComponent, {
                text: descriptionText,
                splitBy: 'word',
                hinge: 'top',
                trigger: 'scroll',
                duration: 0.65,
                stagger: 0.035,
                ease: 'power3.out',
                perspective: 700,
                creaseShading: 0.35,
                fontSize: 'clamp(0.85rem, 1.2vw, 1.15rem)',
                fontWeight: 300,
                color: '#f7f2e8',
                className: 'founder-description'
              })
            : h(
                'p',
                { className: 'founder-description' },
                'Founder of a fast-growing cavatta college. Educationalist, contractor, and agile scaling. Passionate about money-first student-last projects.'
              )
        ),
        h(
          'div',
          { className: 'founder-portrait-wrapper' },
          h('img', {
            src: portraitSrc,
            alt: 'Cavatta Al-Hakim, founder of Cavatta College',
            className: 'founder-portrait',
            loading: 'eager'
          })
        )
      )
    );
  };

  window.FounderSection = FounderSection;

  function mountFounderSection() {
    const targets = document.querySelectorAll('#founder-section-root');
    targets.forEach(mountNode => {
      if (mountNode && window.ReactDOM && !mountNode.dataset.mounted) {
        mountNode.dataset.mounted = 'true';
        const root = window.ReactDOM.createRoot(mountNode);
        root.render(h(FounderSection, {}));
      }
    });
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', mountFounderSection);
  } else {
    mountFounderSection();
  }
})(window);
