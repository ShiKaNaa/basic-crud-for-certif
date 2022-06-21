class ListesController < ApplicationController
  def index
    @listes = Liste.all
  end

  def new
    @liste = Liste.new
  end

  def create
    liste = Liste.new(liste_params)
    if liste.save
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
    params.require(:liste).permit(:nom)
  end
end
