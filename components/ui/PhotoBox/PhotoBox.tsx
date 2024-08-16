import s from './PhotoBox.module.css';

interface PhotoBoxProps {
  name: string;
  title?: string;
  description?: string;
  avatar: string;
}

export default function PhotoBox({
  name,
  title,
  description,
  avatar
}: PhotoBoxProps) {
  return (
    <figure className="flex flex-col justify-center items-center text-center">
      <div className="max-w-md">
        <img src={avatar} alt={name} />
      </div>
      <figcaption>
        {title && <header className={`text-2xl ${s.title}`}>{title}</header>}
        {description && <p className="description-photo">{description}</p>}
      </figcaption>
    </figure>
  );
}
