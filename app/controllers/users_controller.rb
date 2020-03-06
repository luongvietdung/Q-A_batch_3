class UsersController < ApplicationController
  layout :choose_layout

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      log_in @user
      flash[:success] = "Welcome to my website!"
      redirect_to admin_root_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  protected

  def choose_layout
    if current_user.admin?
      "admin"
    elsif current_user.member?
      "member"
    else
      "application"
    end
  end

end
