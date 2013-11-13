class Voter < ActiveRecord::Base
	validates :username, :email, presence: true
	validates :email, uniqueness: true
	validates :email, email: true

	def self.authenticate(username, password)

    #voter = find_by_username_and_password(username, password)    

    voter = find_by_username_and_password_and_approved(username, password, true)    

   end
	
end
