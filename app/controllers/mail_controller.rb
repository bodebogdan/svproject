class MailController<ApplicationController
	def test
		message = params[:comment]
		cart_ids = $redis.smembers  "cart#{current_user.id}"
		@cart_products = Product.where(id: cart_ids)
		UserMailer.welcome_email(current_user.email,message,@cart_products).deliver_now
		$redis.del "cart#{current_user.id}"
	end
end