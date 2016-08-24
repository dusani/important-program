class PasswordChecker
	# def initialize(email, password)
	# 	@email = email
	# 	@password = password
	# end

	def check_password(email, password)
		new_email = email.split("@")
		new_email2 = new_email[1].split(".")
		name = new_email[0]
		domain = new_email2[0]

		if password.length > 7 &&
			password =~ /[a-z]/ && 
			password =~ /[A-Z]/ && 
			password =~ /\d/ &&
			password =~ /\W/ &&
		 	(password.include?(name) == false) && 
			(password.include?(domain) == false)
				return true
		else
			return false

		end

	end
end