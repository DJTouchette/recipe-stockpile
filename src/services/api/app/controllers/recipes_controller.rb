class RecipesController < ApplicationController
  before_action :authenticate_user

  # GETs the recipes for current user
  # /recipes
  def index
    recipes = current_user.recipes
    render json: { recipes: recipes}.to_json, status: :ok
  end


  # TODO GEOF: We need to return one recipe here that matches the id passed in under params[:id].
  # The code in def index grabs all the recipes and you can copy most of it but you just need to return the one
  # with the matching id
  
  # GETs a single recipe of the user by id
  # /recipes/:id
  def show
  end
end
