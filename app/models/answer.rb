class Answer < ApplicationRecord
    belongs_to :survey_question, inverse_of: :answers

    validates_uniqueness_of :answer_text, scope: :survey_question_id
end
