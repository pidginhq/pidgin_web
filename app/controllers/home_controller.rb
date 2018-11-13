class HomeController < ApplicationController
	#Home
	def index
	end
	#About
	def about
	end
	#FAQ
	def faq
	end
	#Contact
	def contact
	end
	def email
		puts "Hey"
      	@name = params[:name]
      	@email = params[:email]
      	@subject = params[:subject]
      	@message = params[:message]
      	PidginMailer.contact_email(@name, @email, @subject, @inquiry).deliver_now
    end
end
