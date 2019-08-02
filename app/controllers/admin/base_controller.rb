class Admin::BaseController < ApplicationController
layout "admin"

before_action :correct_user

private

  def correct_user
    if current_user.admin != "admin"
      render file: "public/404.html"
    end
  end
end
