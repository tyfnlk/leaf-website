import Button from '@/components/ui/Button';
import PhotoBox from '@/components/ui/PhotoBox';
import Link from 'next/link';

const PHOTO_BOX_PROPS = {
  name: 'Leaf Logo',
  title: 'Nourish the future of foodservice',
  avatar: 'LEAF-Logo-Light-Green.png'
};

export default async function WelcomePage() {
  return (
    <section className="bg-[url('/bridge-leaf.avif')] bg-no-repeat bg-cover p-8 min-h-[calc(100dvh-4rem)] md:min-h[calc(100dvh-5rem) flex flex-col justify-center items-center">
      <div className="flex flex-col justify-center items-center gap-8">
        <PhotoBox
          name={PHOTO_BOX_PROPS.name}
          title={PHOTO_BOX_PROPS.title}
          avatar={PHOTO_BOX_PROPS.avatar}
        />

        <Link href={'/pricing'}>
          <Button variant="slim">Let's Go</Button>
        </Link>
      </div>
    </section>
  );
}
