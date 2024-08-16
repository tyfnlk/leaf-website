import Button from '@/components/ui/Button';
import TextSlider from '@/components/ui/TextSlider';
import Link from 'next/link';
import SplitScreen from '@/components/ui/layout/SplitScreen';

// Constants use in the page
const ABOUT_DATA = {
  welcome: {
    title: 'Bring sustainability to the table',
    video: {
      src: 'https://www.youtube.com/embed/YfO5u740ve4',
      title:
        'Leaders in Environmentally Accountable Foodservice (LEAF) | Introduction Video'
    },
    description:
      'We believe in protecting the one resource that gives life to the foodservice industry: the Earth.',
    redirectTo: '/our_story',
    redirectToText: 'Our Story'
  },
  slider: {
    texts: ['engaging', 'recognizing', 'inspiring', 'empowering', 'mobilizing'],
    sideText: 'Leaders in Environmentally Accountable Foodservice'
  },
  learn: {
    title:
      "Canada's first national sustainable foodservice certification program.",
    description:
      'LEAF strengthens the conversation and connection between food, people and the planet.',
    image: {
      src: '/bridge-leaf.avif',
      title: 'Learn Image'
    },
    button: {
      text: 'Learn about our Certification',
      link: '/certification'
    }
  }
};
export default async function AboutPage() {
  return (
    <>
      <section className="bg-[#FCF8F0] p-8 min-h-[calc(100dvh-4rem)] md:min-h[calc(100dvh-5rem) flex flex-col justify-center items-center">
        <div className="flex flex-col justify-center items-center text-center gap-8 min-w-72 max-w-5xl min-h-max">
          <h1 className="md:text-5xl sm:text-3xl text-primary font-medium">
            {ABOUT_DATA.welcome.title}
          </h1>
          <iframe
            allowFullScreen
            className="w-9/12 sm:min-h-72 md:min-h-80"
            src={ABOUT_DATA.welcome.video.src}
            title={ABOUT_DATA.welcome.video.title}
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
          ></iframe>
          <h3 className="md:w-9/12 md:text-3xl sm:text-xl text-primary font-light">
            {ABOUT_DATA.welcome.description.split(':')[0].trim() + ': '}
            <span className="font-medium">
              {ABOUT_DATA.welcome.description.split(':')[1].trim()}
            </span>
          </h3>
          <Link href={ABOUT_DATA.welcome.redirectTo}>
            <Button variant="slim">{ABOUT_DATA.welcome.redirectToText}</Button>
          </Link>
        </div>
      </section>
      <section className="bg-[url('/bridge-leaf.avif')] bg-no-repeat bg-cover p-8 min-h-[calc(50dvh-4rem)] md:min-h[calc(50dvh-5rem) flex justify-center items-center">
        <div className="w-9/12 grid grid-cols-2 gap-x-16 gap-y-8 items-center">
          <TextSlider
            texts={ABOUT_DATA.slider.texts}
            className="2xl:text-6xl md:text-5xl sm:text-3xl text-yellow-300 italic font-meidum col-start-1 col-end-1 justify-self-end"
          />
          <h1 className="2xl:text-5xl md:text-4xl sm:text-2xl text-white font-normal drop-shadow col-start-2 col-end-2">
            {ABOUT_DATA.slider.sideText}
          </h1>
        </div>
      </section>
      <section className="bg-[#575C12] flex flex-col justify-center items-center">
        <SplitScreen
          display="horizontal"
          image={ABOUT_DATA.learn.image.src}
          imageAlt={ABOUT_DATA.learn.image.title}
          imageRounded
          title={ABOUT_DATA.learn.title}
          description={ABOUT_DATA.learn.description}
          buttonText={ABOUT_DATA.learn.button.text}
          buttonRedirect={ABOUT_DATA.learn.button.link}
          className="w-9/12 p-12 sm:gap-6 xl:gap-36 md:gap-12 justify-center items-center"
        />
      </section>
    </>
  );
}
