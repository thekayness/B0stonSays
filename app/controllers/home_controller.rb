class HomeController < ApplicationController
	
  def index
  end

  def search_near
  end

  def restaurant_params
    params.require(:restaurant).permit(:would_eat)
  end

end