class Questionarie < ApplicationRecord
    belongs_to :banner
    has_many :answers
    # has_many :user_response
    validates :question_type, presence: true, inclusion:{in: ['MCQ','Single choice option'], message: "The answer should be in 'MCQ' or 'Single choice option'"}
    validates :question, presence: true
    # validates :title, uniqueness: true
end
