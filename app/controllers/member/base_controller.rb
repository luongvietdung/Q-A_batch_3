class Member::BaseController < ApplicationController
  layout "member"

  before_action :correct_user

  private

  def correct_user
    if current_user.admin != "member"
      render file: "public/404.html"
    end
  end
end
