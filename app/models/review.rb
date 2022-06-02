class Review < ApplicationRecord
  belongs_to :list
  validates :rating, :content, presence: true
  validates :rating, inclusion: 0..5
  validates :rating, numericality: { only_integer: true }
end
