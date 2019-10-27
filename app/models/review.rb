class Review < ApplicationRecord

validates :user_id, uniqueness: true

belongs_to :pizzaplace
belongs_to :user

end
