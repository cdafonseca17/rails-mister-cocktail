class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @doses = Dose.where(cocktail_id: @cocktail.id)
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.create(params_cocktail)
    redirect_to cocktails_path
  end

  private

  def params_cocktail
    params.require('cocktail').permit(:name)
  end
end
