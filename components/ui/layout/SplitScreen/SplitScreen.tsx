// SplitScreen.tsx

import s from './SplitScreen.module.css';
import Button from '../../Button';
import Link from 'next/link';

interface SplitScreenProps {
  image: string;
  imageAlt: string;
  imageRounded?: boolean;
  title: string;
  subtitle?: string;
  description: string;
  buttonText?: string;
  buttonRedirect?: string;
  display?: 'horizontal' | 'vertical';
  variant?: boolean;
  className?: string;
}

const SplitScreen: React.FC<SplitScreenProps> = ({
  image,
  imageAlt,
  imageRounded = false,
  title,
  subtitle,
  description,
  buttonText,
  buttonRedirect = '/',
  display = 'vertical',
  variant = false,
  className
}) => {
  return (
    <div
      className={`${className} ${display === 'horizontal' ? s.horizontal : s.vertical} `}
    >
      {variant ? (
        <>
          <figure className="max-w-md">
            <img
              src={image}
              alt={imageAlt}
              className={`w-full ${imageRounded && s.rounded}`}
            />
          </figure>
          <article className="flex flex-col gap-6 max-w-md">
            <h2 className="sm:text-2xl md:text-2xl xl:text-3xl font-medium">
              {title}
            </h2>
            {subtitle && <h3 className="text-xl font-light">{subtitle}</h3>}
            <p className="sm:text-lg xl:text-2xl font-normal">{description}</p>
            {buttonText && (
              <Link href={buttonRedirect}>
                <Button className="w-9/12 self-center" variant="slim">
                  {buttonText}
                </Button>
              </Link>
            )}
          </article>
        </>
      ) : (
        <>
          <article className="flex flex-col gap-6 max-w-md">
            <h2 className="sm:text-2xl md:text-2xl xl:text-3xl font-medium">
              {title}
            </h2>
            {subtitle && <h3 className="text-xl font-light">{subtitle}</h3>}
            <p className="sm:text-lg xl:text-2xl font-normal">{description}</p>
            {buttonText && (
              <Link href={buttonRedirect}>
                <Button className="w-9/12 self-center" variant="slim">
                  {buttonText}
                </Button>
              </Link>
            )}
          </article>
          <figure className="max-w-md">
            <img
              src={image}
              alt={imageAlt}
              className={`w-full ${imageRounded && s.rounded}`}
            />
          </figure>
        </>
      )}
    </div>
  );
};

export default SplitScreen;
