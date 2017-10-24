class Comment < ApplicationRecord
	validates :body, presence: true
  validates :user, presence: :true
  validates :product, presence: :true
  validates :rating, numericality: { only_integer: true }
  belongs_to :user
  belongs_to :product

  # for desending order means the highest rating at the top
  scope :rating_desc, -> { order(rating: :desc) }

  # for ascending order, lowest at the top...
  scope :rating_asc, -> { order(rating: :asc) }
end
