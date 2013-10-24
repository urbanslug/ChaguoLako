class Admin < ActiveRecord::Base
	def self.authenticate(username, password)
		user = find_by_name_and_password(username,password)
	end
end
