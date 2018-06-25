class UsersController < ApplicationController

# creates a new instance of @user(blank)	
  def new
  	@user = User.new
  end

# creates a new user complete with all parameters
  def create
  	@user = User.new(user_params)
  	if @user.save
      redirect_to '/tasks'
    else
      render 'new'
    end
  end



private

#securely pass params so no attacks can happen
  def user_params
      params.require(:user).permit(:email, :password, :name, :password_confirmation, :accountRole, :companyName)
    end
end
