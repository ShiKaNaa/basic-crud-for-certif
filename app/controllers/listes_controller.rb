class ListesController < ApplicationController
  def index
    @listes = Liste.all
  end

  def new
    @liste = Liste.new
  end

  def create
    @liste = Liste.new(liste_params)
    if @liste.save
      bind_ingredients_to_liste(params[:liste][:ingredient_ids])
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    Liste.find(params[:id]).destroy
    redirect_to root_path
  end

  private

  def liste_params
    params.require(:liste).permit(:nom, :ingredient_ids)
  end

  def bind_ingredients_to_liste(ingredients_array)
    cleared_array = ingredients_array - ["", nil]
    cleared_array.each do |ingredient|
      nom = Ingredient.find(ingredient)
      test = Ingredient.create!(nom: nom.nom, quantite: "")
      raise
    end
  end
end
