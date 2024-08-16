'use client';

import { useState, useEffect } from 'react';
import s from './TextSlider.module.css';

interface TextSliderProps {
  texts: string[];
  transitionDuration?: number;
  className?: string;
}

const TextSlider = ({
  texts,
  transitionDuration = 2000,
  className
}: TextSliderProps) => {
  const [activeIndex, setActiveIndex] = useState(0);

  useEffect(() => {
    const intervalId = setInterval(() => {
      setActiveIndex((prevIndex) =>
        prevIndex === texts.length - 1 ? 0 : prevIndex + 1
      );
    }, 2 * transitionDuration);

    return () => clearInterval(intervalId);
  }, [setActiveIndex, texts, transitionDuration]);

  return (
    <div className={`${s.text_slider} ${className}`}>
      {texts.map((text, i) => (
        <h3
          key={text}
          className={`${s.text_item} ${i === activeIndex ? s.active : ''}`}
        >
          {text}
        </h3>
      ))}
    </div>
  );
};

export default TextSlider;
