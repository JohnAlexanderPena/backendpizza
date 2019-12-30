class Review < ApplicationRecord

  validates :content, presence: true
  validates :rating, presence: true


belongs_to :pizzaplace
belongs_to :user

end
