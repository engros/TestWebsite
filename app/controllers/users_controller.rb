class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user #if sign up is valid go to this page view (redirect_to user_url(@user) or link_to also works with path)
    else
      render 'new'
    end
  end

  private # user_params will not be exposed to external users via the web, only available in controller

  def user_params # contains strong parameters
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
    # strong parameters disallows any post information that is not permitted (admin security) when signing_up
    # so not all users will get admin access by hacking params using curl
  end
end
