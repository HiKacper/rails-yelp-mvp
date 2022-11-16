class Review < ApplicationRecord
  belongs_to :restaurant

  RATING = [0, 1, 2, 3, 4, 5]
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: RATING }

  # CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  # validates :name, :address, :category, presence: true
  # validates :category, inclusion: { in: CATEGORY }

end
