class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :restaurant, presence: true
  validates :rating, inclusion: { in: (0..5).to_a }, numericality: { only_integer: true}
end