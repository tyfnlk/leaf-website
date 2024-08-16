'use client';

import { createClient } from '@/utils/supabase/client';
import BooleanQuestion from '../Questions/BooleanQuestion';

export default function Form({ data }) {
  const supabase = createClient();
  return (
    <form
      onSubmit={async (e) => {
        e.preventDefault();
        const r = await supabase.from('questions').insert({
          QuestionID: 6,
          QuestionType: 1,
          QuestionTitle: 'question test from code',
          QuestionChar: 44,
          UpdatedDate: '2024-08-13 12:34:56',
          Version: 2,
          SubsectionID: 'f47ac10b-58cc-4372-a567-0e02b2c3d487'
        });
        console.log(r);
      }}
    >
      <h2>TEST</h2>
      {data.map((question) => (
        <BooleanQuestion
          key={question.QuestionID}
          content={question.QuestionTitle!}
        />
      ))}
      <input type="submit" value="CLICK ME" />
    </form>
  );
}
