class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email_id: params[:user][:email_id])
    if @user && @user.authenticate(params[:user][:password])
      flash[:success] = 'User logedin'
      redirect_to '/'
    else
      flash[:warning] = 'Invalid Username or Password'
      redirect_to '/sessions/new'
    end
  end

end
