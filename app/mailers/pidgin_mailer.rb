class PidginMailer < ApplicationMailer
	default from: "pidgin.hq@gmail.com"

	def signup_email(person)
		@person = person
		@url = "https://fierce-mountain-86889.herokuapp.com/";
		mail(to: @person.email, subject: "Pidgin: Welcome to the reveolution!")
	end
end
