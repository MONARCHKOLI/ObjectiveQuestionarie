class Banner < ApplicationRecord
    has_one_attached :main_image do |attachable|
        attachable.variant :thumb, resize_to_limit: [100, 100]
    end
    belongs_to :user_response
    has_many :questionarie
end
