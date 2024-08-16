import Form from '@/components/ui/Form';
import BooleanQuestion from '@/components/ui/Questions/BooleanQuestion';
import { createClient } from '@/utils/supabase/server';

// interface Question {
//   QuestionID: number;
//   Version: number;
//   QuestionTitle: string;
//   QuestionType: number;
//   QuestionChar: number;
//   UpdatedDate: string;
//   SubsectionID: string;
// }

// const MOCK_DATA = [
//   {
//     QuestionID: 'sad465dvbg45hn4',
//     QuestionTitle: 'Are you gay?',
//     QuestionType: 'boolean'
//   },
//   {
//     QuestionID: 'sfnxpl823hop9p4',
//     QuestionTitle: 'Are you NOT gay?',
//     QuestionType: 'boolean'
//   },
//   {
//     QuestionID: 'xkmhnuerg86315fhj',
//     QuestionTitle: 'Are XXXXXXXXXXXXX NOT gay?',
//     QuestionType: 'boolean'
//   }
// ];

export default async function EvaluationPage() {
  const supabase = createClient();

  // const {
  //   data: { user }
  // } = await supabase.auth.getUser();

  // const { data: subscription, error } = await supabase
  //   .from('subscriptions')
  //   .select('*, prices(*, products(*))')
  //   .in('status', ['trialing', 'active'])
  //   .maybeSingle();

  const { data, error } = await supabase.from('questions').select('*');
  // .select('*, subquestions(*)')
  // .is('subquestions', null);

  // const questions: { xxx: string; subquestions: { yyy: string }[] } =
  //   data ?? [];

  if (error) {
    console.log(error);
  }

  if (!data)
    return (
      <section>
        <h2>TEST</h2>
        <p>No data</p>
      </section>
    );

  return (
    // <form
    //   onSubmit={(e) => {
    //     e.preventDefault();
    //     supabase.from('questions').insert({
    //       QuestionType: 1,
    //       QuestionTitle: 'question test from code',
    //       QuestionChar: 44,
    //       UpdatedDate: '2024-08-13 12:34:56',
    //       Version: 2,
    //       SubsectionID: 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
    //     });
    //   }}
    // >
    //   <h2>TEST</h2>
    //   {data.map((question) => (
    //     <BooleanQuestion
    //       key={question.QuestionID}
    //       content={question.QuestionTitle!}
    //     />
    //   ))}
    //   <input type="submit" value="CLICK ME" />
    // </form>
    <Form data={data} />
  );
}
