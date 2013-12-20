class UsersController < ApplicationController

  def show
    redirect_to 403 unless current_user.id = params[:id]
    @user = current_user
  end
end
