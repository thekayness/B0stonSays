class HomeController < ApplicationController

  def index
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    render json: @restaurant
  end

  def search_name
  	@restaurants = Restaurant.find_by_name(params[:name])
    render json: @restaurants
  end

  def search_address
    @restaurants = Restaurant.near(params[:address], 0.5)
    render json: @restaurants
  end

  def flag
    @inspection = Restaurant.find(params[:id])
    @inspection.increment!(:flags)
    render json: @inspection
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:would_eat)
  end

end