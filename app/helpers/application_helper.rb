module ApplicationHelper
	def admin_is_logged_in?
		session[:user] != nil && session[:user].is_a?(Admin)
	end
	def voter_is_logged_in?
		session[:user] != nil && session[:user].is_a?(Voter)
	end
	def user_is_logged_in?
		voter_is_logged_in? || admin_is_logged_in?
	end
end
