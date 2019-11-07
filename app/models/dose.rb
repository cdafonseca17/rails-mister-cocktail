class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true, allow_blank: false
  validates :cocktail_id, presence: true
  validates :ingredient_id, presence: true
  validates_uniqueness_of :cocktail_id, :scope => [:ingredient_id]

  # validates [:cocktail_id, :ingredient_id], uniqueness: true
end
