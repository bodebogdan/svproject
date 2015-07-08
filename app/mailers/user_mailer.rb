class UserMailer < ApplicationMailer
	def purchase_email(user,message,products)
			@user = user 
			@user_products = products
			@url = 'http:yahoo.com'
			
			@user_message = message
			mail(to: @user,
				subject: 'Thank you for your purchase')
	end
	def registration_email(user)
			@user = user 
			@url = 'http:yahoo.com'
			mail(to: @user,
				subject: 'Welcome to my site')
	end
	
	
end
