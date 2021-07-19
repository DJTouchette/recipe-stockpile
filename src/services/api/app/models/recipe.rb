class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_items
  has_many :ingredients, :through => :recipe_items

  # scope :using, lambda do |text| 
  #   joins(:ingredients).where("ingredients.name LIKE ?", "%#{text}%")
  # end
end
