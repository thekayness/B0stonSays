class RestaurantsController < ApplicationController
	def index
		#@restaurants = Restaurant.search(params[:search])
  		render
  	end

  	def show
  		
  	end

  	def find
  		@restaurant = Restaurant.find(1)
  		redirect_to restaurant_show_path
  	end
end