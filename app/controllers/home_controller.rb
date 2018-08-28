
class HomeController < ApplicationController
	def index
		@restaurants = Restaurant.all;	
		@colleges = College.all;
	end
end
