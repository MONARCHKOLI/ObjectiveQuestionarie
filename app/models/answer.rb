class Answer < ApplicationRecord
    belongs_to :questionarie
    # belongs_to :user_response
    validates :answer, presence: true
end
