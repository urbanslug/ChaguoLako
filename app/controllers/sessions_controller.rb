class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:is_admin] == "1"
      admin = Admin.authenticate(params[:username], params[:password])
      if admin
        session[:user] = admin
        redirect_to root_url, :notice => "Welcome #{admin.username}"
      else
        redirect_to new_session_path, :notice => "Invalid Admin username or password"
      end
    else
      # its a regular voter
      voter = Voter.authenticate(params[:username], params[:password])
      if voter
        session[:user] = voter
        redirect_to root_url, :notice => "Welcome #{voter.username}"
      else
        redirect_to new_session_path, :notice => "Invalid username or password"
      end
    end
  end
  
  def destroy
    session[:user] = nil
    redirect_to root_url, :notice => "Bye bye!"
  end
end
