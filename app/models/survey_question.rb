class SurveyQuestion < ApplicationRecord
    belongs_to :survey, inverse_of: :survey_questions

    validates_uniqueness_of :question_text, :question_no, scope: :survey_id
    validates_presence_of :question_text, :question_no, scope: :survey_id
    validates :question_text, length: { in: 5..240 }
end