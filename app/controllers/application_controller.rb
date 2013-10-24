class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authorize_admin
  	if !view_context.admin_is_logged_in?
  		redirect_to new_session_path, notice: "You must first log in..!"
  	end
  end
end
