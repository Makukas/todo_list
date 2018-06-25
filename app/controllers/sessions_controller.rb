class SessionsController < ApplicationController


  def new
  end

  def create
  	user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
    	log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
    	redirect_to '/tasks'
    else
      # Create an error message.

      render 'new'
    end
  end

  def profile
  	render 'profile'
  end


  def destroy
  	session.delete(:user_id)
    cookies.delete(:user_id)
    cookies.delete(:remember_token)
    @current_user = nil
    redirect_to '/tasks'
  end

  
end
