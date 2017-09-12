class BeersController < ApplicationController
  def index
    @beers = Beer.all
  end

  def show
    @beer = Beer.find(params[:id])

  end

  def new
    @company = Company.find(params[:company_id]).id
    @beer = Beer.new(company_id: @company)
  end

  def create
    @beer = Beer.new(create_params)
    @beer.save
    redirect_to company_beer_path(@beer.company_id, @beer)
  end

  def edit
  end
  def destroy
    @beer = Beer.find(params[:id])
    @company = Company.find_by(params[@beer.company_id])
    @beer.destroy!
    redirect_to company_path(@company)
  end


  def create_params
    params.require(:beer).permit(:name, :desc, :abv, :image_url, :company_id)
  end
end
