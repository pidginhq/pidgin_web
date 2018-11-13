class PidginMailer < ApplicationMailer
	def signup_email(person)
		@person = person
		mail(to: @person.email, subject: "Welcome to Pidgin!")
	end
	def contact_email(contactName, email, subject, inquiry)
		@name = contactName
		@email = email
		@subject = subject
		@inquiry = inquiry
		mail(to: "pidgin.hq@gmail.com", subject: subject)
	end
end
