class MailController<ApplicationController
	def test
		user = User.first
		UserMailer.welcome_email("ella92mp@yahoo.com").deliver_now
	end
end