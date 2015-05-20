class UserMailer < ApplicationMailer
	def welcome_email(user,message,products)
			@user = user 
			@user_products = products
			@url = 'http:yahoo.com'
			file=File.join('/home','svuser','workspace','sv-labs-2015','apple-touch-icon.png')
			attachments['testfile.png'] = File.read(file)
			
			@user_message = message
			mail(to: @user,
				subject: 'Welcome to my site')
	end
	
	
end
