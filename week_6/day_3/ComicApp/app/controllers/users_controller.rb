class UsersController < ApplicationController

  before_action :authenticate_user!, only: [:show]

  def home
    @users = User.all
    render :home
  end

  def show
    @user = User.find(params[:id])
    render :show
  end

end
