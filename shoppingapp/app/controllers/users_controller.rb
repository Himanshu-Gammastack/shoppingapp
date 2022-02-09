class UsersController < ApplicationController

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'User account created'
      redirect_to '/'
    else
      flash[:warning] = 'failed account creation try again'
      redirect_to 'users/new'
    end
  end


  private
  def user_params
    puts "params"
    params.require(:user).permit(:name, :email_id, :contact_number, :password, :password_confirmation)
  end

end
