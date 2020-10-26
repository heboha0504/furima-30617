class UsersController < ApplicationController

  def update
    if curerent_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end  
  end

  def edit
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
end
