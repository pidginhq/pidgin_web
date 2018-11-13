class WaitlistsController < ApplicationController
  #New
	def new
		@person = Waitlist.new
		@person.email = params[:email]
    @person.save
    	if @person.save

     		# Sends email to user when user is created.
        PidginMailer.signup_email(@person).deliver_now
			  flash[:message] = 'Mail was successfully created.' 
    		else
      			format.html { render :new }
      			format.json { render json: @user.errors, status: :unprocessable_entity }
    		end 	
    end
    #Show
end
