class StackUsersController < ApplicationController

  def show
    @user = StackUser.find(params[:id])
  end

  def search
    @user = StackUser.from_remote_user_id(params[:id])
    render :show
  end

end