module ApplicationHelper
	def admin_is_logged_in?
		session[:user] != nil
	end
end
