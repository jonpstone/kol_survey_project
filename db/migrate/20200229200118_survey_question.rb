class SurveyQuestion < ActiveRecord::Migration[6.0]
  def change
    create_table :survey_questions do |t|
      t.string :question_text
      t.boolean :fixed_question
      t.references :survey, foreign_key: true

      t.timestamps
    end
  end
end
