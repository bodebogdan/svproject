class MailController<ApplicationController
	def test
		message = params[:comment]
		cart_ids = $redis.smembers  "cart#{current_user.id}"
		@cart_products = Product.where(id: cart_ids)
		UserMailer.purchase_email(current_user.email,message,@cart_products).deliver_now
		$redis.del "cart#{current_user.id}"
	end
	def register
		user = User.first
		UserMailer.registration_email(current_user.email).deliver_now
	end
end