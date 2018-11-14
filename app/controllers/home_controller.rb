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
	#Contact Pidgin
	#Creates a contact to save to DB which we will later use to send personalized emails
	def contact_pidgin
		@contact = Contact.new
		@contact.name = params[:name]
		@contact.email = params[:email]
		@contact.subject = params[:subject]
		@contact.mail_message = params[:mail_message]
		@contact.save
	end
end
