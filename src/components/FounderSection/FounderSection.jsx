import React from 'react';
import FoldText from '../FoldText/FoldText';
import './FounderSection.css';

const FounderSection = ({
  backgroundSrc = 'images/founder_bg.jpg',
  portraitSrc = 'images/founder.png',
  className = ''
}) => {
  const descriptionText = `Founder of a fast-growing cavatta college. Educationalist, contractor, and agile scaling. Passionate about money-first student-last projects.`;

  return (
    <section className={`founder-section ${className}`.trim()} aria-label="Founder of Cavatta College">
      <div
        className="founder-background"
        style={{ '--founder-bg-url': `url(${backgroundSrc})` }}
      />
      <div className="founder-overlay" />
      <div className="founder-content">
        <div className="founder-copy">
          <span className="founder-eyebrow">Meet</span>
          <FoldText
            text="Cavatta Al&#8209;Hakim"
            splitBy="char"
            hinge="top"
            trigger="scroll"
            duration={0.65}
            stagger={0.045}
            ease="power3.out"
            perspective={700}
            creaseShading={0.55}
            fontSize="clamp(1.6rem, 3.8vw, 3.8rem)"
            fontWeight={700}
            color="#ffde03"
            className="founder-title"
          />
          <FoldText
            text={descriptionText}
            splitBy="line"
            hinge="top"
            trigger="scroll"
            duration={0.65}
            stagger={0.08}
            ease="power3.out"
            perspective={700}
            creaseShading={0.35}
            fontSize="clamp(1rem, 1.6vw, 1.35rem)"
            fontWeight={400}
            color="#f7f2e8"
            className="founder-description"
          />
        </div>
        <div className="founder-portrait-wrapper">
          <img
            src={portraitSrc}
            alt="Cavatta Al-Hakim, founder of Cavatta College"
            className="founder-portrait"
            loading="eager"
          />
        </div>
      </div>
    </section>
  );
};

export default FounderSection;
