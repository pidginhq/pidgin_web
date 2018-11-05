class PidginMailer < ApplicationMailer
	def signup_email(person)
		@person = person
		mail(to: @person.email, subject: "Welcome to Pidgin!")
	end
end
