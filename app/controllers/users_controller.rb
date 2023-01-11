class UsersController < ApplicationController

  def new; end

  def create
    if params[:user].present?
      @user = User.new(user_params)
      puts @user.errors.full_messages
      if @user.save
        session[:user_id] = @user.id
        redirect_to '/'
      else
        puts @user.errors.full_messages
        render 'new'
      end
    else
      redirect_to '/signup'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
