class Admin::BaseController < ApplicationController
layout "admin"

before_action :correct_user

private

  def correct_user
    if current_user.admin != "admin"
      flash[:errors] = "Access denied!"
      redirect_to login_path
    end
  end
end
