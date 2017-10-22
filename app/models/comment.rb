class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :product

  # for desending order means the highest rating at the top
  scope :rating_desc, -> { order(rating: :desc) }

  # for ascending order, lowest at the top...
  scope :rating_asc, -> { order(rating: :asc) }
end
