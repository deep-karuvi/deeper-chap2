class UsersController < ApplicationController
  def signup
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.new permit_User_create
    if @user.save
      flash[:success] = "Welcome #{@user.name}, you have successfully signed up!"
      redirect_to user_url(@user.id)
    else
      render 'signup'
    end
  end
  
  private
    def permit_User_create
      params.require(:user).permit(:name,:email,:password)
    end
  
end
