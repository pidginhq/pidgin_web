class DormsController < ApplicationController
	
	def dorm_params
		params.require(:dorm).permit(:dorm_name)
	end
end
