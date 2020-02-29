class SurveyQuestion < ApplicationRecord
    belongs_to :survey, inverse_of: :survey_questions

    validates_uniqueness_of :question_text
    validates_presence_of :question_text
    validates :question_text, length: { in: 5..240 }
end