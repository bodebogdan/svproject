class MailController<ApplicationController
	def test
		user = User.first
		UserMailer.welcome_email("ella92mp@yahoo.com").deliver_now
		$redis.del "cart#{current_user.id}"
	end
end