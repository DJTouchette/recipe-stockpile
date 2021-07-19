class RecipeItem < ApplicationRecord
  belongs_to :recipe
  has_one :ingredient
  # VALID_MEASURES = %w[oz kg tbsp tsp cup pint qt gal ml l oz lb g mg] # use for "select" tags in forms
  # validates :measure, :inclusion => VALID_MEASURES
end
