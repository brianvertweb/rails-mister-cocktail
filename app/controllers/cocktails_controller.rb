class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show]

  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    redirect_to @cocktail
  end

  def show
    @doses = @cocktail.doses
  end
end

private

def set_cocktail
  @cocktail = Cocktail.find(params[:id])
end

def cocktail_params
  # *Strong params*: You need to *whitelist* what can be updated by the user
  # Never trust user data!
  params.require(:cocktail).permit(:name, :body, :photo)
end
