class Voter < ActiveRecord::Base
	validates :username, :email, presence: true
	validates :email, uniqueness: true
	validates :email, email: true
	
end
