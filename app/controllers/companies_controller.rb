class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def edit
  end

  def create
    @company = Company.new(create_params)
    @company.save

    redirect_to company_path(@company)
  end

  def new
    @company = Company.new
  end

  def show
    @company = Company.find(params[:id])
    # @songs = Song.where(:movie_id => @movie_id)
    @beers = Beer.where(:company => @company.id)
  end

  private
  
    def create_params
      params.require(:company).permit(:name, :country, :image_url)
    end
end
