class BrewerysController < ApplicationController

  def index
    @brewerys = Brewery.all
  end

  def new
    @brewery = Brewery.new
  end

  def create
    @brewery = Brewery.create!(brewery_params)

    redirect_to @brewery
  end
  
  def show
    @brewery = Brewery.find(params[:id])
  end

  def edit
    @brewery = Brewery.find(params[:id])
  end

  def update
    @brewery = Brewery.find(params[:id])
    @brewery.update(brewery_params)

    redirect_to @brewery
  end

  def destroy
    @brewery = Brewery.find(params[:id])
    @brewery.destroy

    redirect_to brewerys_path
  end

end
