class UsersController < ApplicationController
  def view
    @user = User.find(params[:id])
  end
  def edit
    @user = current_user if current_user
  end

end
