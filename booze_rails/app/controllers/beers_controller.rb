class BeersController < ApplicationController

  def index
    @beers = Beer.all
  end

  def new

    @beer = Beer.new
  end

  def create
    @beer = Beer.create
    redirect_to @beer
  end

  def show
    @beer = Beer.find(params[:id])
  end

  def edit
    @beer = Beer.find(params[:id])
  end

  def update
    @beer = Beer.find(params[:id])
    @beer.update(beer_params)

    redirect_to @beer
  end

  def destroy
    @beer = Beer.find(params[:id])
    @beer.destroy

    redirect_to beers_path
  end

  def beer_params
    params.require(:beer).permit(:name, :brewery, :style, :booze_id, :booze_type)
  end

end
