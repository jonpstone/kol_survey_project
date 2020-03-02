class AddQuestionNumberToSurveyQuestion < ActiveRecord::Migration[6.0]
  def change
    add_column :survey_questions, :question_no, :integer
  end
end
