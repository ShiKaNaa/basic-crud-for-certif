class ListesController < ApplicationController
  def index
    @listes = Liste.all
    @ingredients = Ingredient.all
  end
end
