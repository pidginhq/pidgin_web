class RestaurantsController < ApplicationController
	def index
		@restaurant_search_results = Restaurant.where('restaurant_name LIKE ?', "%#{params[:restaurant_name]}%")	
	end
	def restaurant_params
  		params.require(:restaurant).permit(:restaurant_name)
	end
end
