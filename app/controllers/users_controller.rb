class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  def edit
    @user = current_user if current_user
  end

end
