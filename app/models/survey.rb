class Survey < ApplicationRecord
    has_many :survey_questions, inverse_of: :survey, dependent: :destroy

    validates_uniqueness_of :name
    validates_presence_of :name
    validates :name, length: { in: 3..25 }
    validates :due_date, length: { is: 8 }

    def self.ordered
        order(:name).all
    end

    def year
        date_arr = self.due_date.to_s.split('')
        date_arr.slice(0, 4).join('')
    end

    def month
        date_arr = self.due_date.to_s.split('')
        date_arr[4] + date_arr[5]
    end

    def day
        date_arr = self.due_date.to_s.split('')
        date_arr.slice(6, 7).join('')
    end
end