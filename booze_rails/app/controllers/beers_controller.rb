class BeersController < ApplicationController

  def index
      @beers = Beer.all
    end

    def new
      @brewery = Brewery.find(params[:brewery_id])
      @beer = @brewery.beers.new
    end

    def create
      @brewery = Brewery.find(params[:brewery_id])
      @beer = @brewery.beers.create(beer_params)

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


end