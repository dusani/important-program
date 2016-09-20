class SessionsController < ApplicationController

  before_action :user_setup, only: [:new]
  before_action :redirect_if_already_logged_in, only: [:new]
  def new
    # redirect_if_already_logged_in
    render :new

  end

  def create
    user = User.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to "/"
      else
        redirect_to "/login"
      end
  end

  def destroy
    session.clear
    redirect_to "/"
  end

end
