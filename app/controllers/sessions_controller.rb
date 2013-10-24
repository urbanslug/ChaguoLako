class SessionsController < ApplicationController
  def new
  end

  def create
  	admin = Admin.authenticate(params[:username], params[:password])
  	if admin
  		session[:user] = admin
  		redirect_to root_url, :notice => "Welcome #{admin.name}"
  	else
  		#render "new", :notice => "Wrong Username or Password"
  		redirect_to new_session_path, :notice => "Wrong Username or Password"
  	end
  end

  def destroy
    session[:user] = nil
    redirect_to new_session_path, :notice => "You have logged out..!"
  end
end
