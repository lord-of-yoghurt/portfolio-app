class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # before_filter is deprecated and removed from Rails 5.1
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
