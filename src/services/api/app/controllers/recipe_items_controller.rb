class RecipeItemsController < ApplicationController
  before_action :authenticate_user

  # GETs recipe_items from a user's recipe
  # /recipes/:id/recipe_items
  def index
    recipe_items = current_user.recipes.includes(recipe_items: :ingredient).find(params[:recipe_id]).recipe_items
    render json: { recipe_items: recipe_items}.to_json(include: :ingredient), status: :ok
  end
end
