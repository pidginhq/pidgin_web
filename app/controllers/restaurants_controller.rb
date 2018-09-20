class RestaurantsController < ApplicationController
	def index
		#Query results will be
		@restaurant_search_results = Restaurant.where('restaurant_name LIKE ?', "%#{params[:restaurant_query].to_s.capitalize}%");
	end
	def show
		#First, retrieve restaurant
		@restaurant = Restaurant.find(params[:id]);
		#Call related menu to current restaurant
		@menu = Menu.find(@restaurant.menu_id);
		#Call menu_items that belong to menu
		@menu_items = MenuItem.where(menu_id: @menu.id);
		#To best partition the menu, we select items by their menu section.
		@menu_sections = MenuItem.select(:menu_section).distinct;
	end
	def restaurant_params
  		params.require(:restaurant).permit(:restaurant_name)
	end
end
