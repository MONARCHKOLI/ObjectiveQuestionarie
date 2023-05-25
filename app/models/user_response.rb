class UserResponse < ApplicationRecord
    belongs_to :user
    # belongs_to :questionarie
    has_many :banner
    # has_many :answer
end
