class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.create(cocktail_params)
    redirect_to cocktail_path(@cocktail)
  end

  def show
    find
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

  def find
    @cocktail = Cocktail.find(params[:id])
  end
end
