class RestaurantsController < ApplicationController
	def index
		#@restaurants = Restaurant.search(params[:search])
  		render
  	end

  	def show
  		
  	end

  	def find
  		@restaurant = Restaurant.find(1)
  		render show.html.erb
  	end

  	def create
  		@restaurant = Restaurant.find(1)
  		render show.html.erb
  	end
end