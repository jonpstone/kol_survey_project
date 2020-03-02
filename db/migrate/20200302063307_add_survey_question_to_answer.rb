class AddSurveyQuestionToAnswer < ActiveRecord::Migration[6.0]
  def change
    add_reference :answers, :survey_question, null: false, foreign_key: true
  end
end
