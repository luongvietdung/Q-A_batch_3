class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def after_sign_path_for(resources)
    stored_location_for(resource) || admin_root_path
  end
end
