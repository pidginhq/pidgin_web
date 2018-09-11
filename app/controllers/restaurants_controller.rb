class RestaurantsController < ApplicationController
	def index
		#Query results will be
		@restaurant_search_results = Restaurant.where('restaurant_name LIKE ?', "%#{params[:restaurant_query].to_s.capitalize}%");
	end
	def show
		@restaurant = Restaurant.find(params[:id])
		puts @restaurant
	end
	def restaurant_params
  		params.require(:restaurant).permit(:restaurant_name)
	end
end
