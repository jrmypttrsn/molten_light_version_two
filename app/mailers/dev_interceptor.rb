class DevInterceptor
	def self.delivering_email(message)

		#Add the original recipient's email to the subject line
		message.subject = "[#{message.to}] #{message.subject}"

		#Redirect the email to your email address
		message.to = ['moltenlightapp@gmail.com']		
	end
	
end