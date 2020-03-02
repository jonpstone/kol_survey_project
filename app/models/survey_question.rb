class SurveyQuestion < ApplicationRecord
    belongs_to :survey, inverse_of: :survey_questions
    has_many :answers, inverse_of: :survey_question

    validates_uniqueness_of :question_text, :question_no, scope: :survey_id
    validates_presence_of :question_text, :question_no, scope: :survey_id
    validates :question_text, length: { in: 5..240 }

    def self.ordered
        order(:question_no).all
    end
end