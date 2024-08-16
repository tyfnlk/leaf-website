//import s from './PhotoBox.module.css';

interface BooleanQuestionProps {
  content: string;
}

export default function BooleanQuestion({ content }: BooleanQuestionProps) {
  return (
    <div className="flex flex-nowrap gap-20">
      <legend>{content}</legend>
      <div className="flex flex-row  flex-nowrap gap-2">
        <input type="radio" id="yes-answer" name="" value="Y" />
        <label>Yes</label>

        <input type="radio" id="no-answer" name="" value="N" />
        <label>No</label>
      </div>
    </div>
  );
}
