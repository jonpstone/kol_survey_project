class Survey < ApplicationRecord
    has_many :survey_questions, inverse_of: :survey, dependent: :destroy

    validates_uniqueness_of :name
    validates_presence_of :name
    validates :name, length: { in: 3..25 }

    def self.ordered
        order(:name).all
    end
end