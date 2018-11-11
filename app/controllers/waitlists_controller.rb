class WaitlistsController < ApplicationController
  #New
	def new
		@person = Waitlist.new
		@person.email = params[:email]
    @person.save 	
    end
    #Show
    def show

    end
end
