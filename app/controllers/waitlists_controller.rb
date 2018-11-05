class WaitlistsController < ApplicationController
	def new
		@person = Waitlist.new
		@person.email = params[:email]
    	if @person.save

     		# Sends email to user when user is created.
      #PidginMailer.signup_email(@person).deliver_now
			#flash[:message] = 'Mail was successfully created.' 
    		else
      			format.html { render :new }
      			format.json { render json: @user.errors, status: :unprocessable_entity }
    		end 	
    end
end
