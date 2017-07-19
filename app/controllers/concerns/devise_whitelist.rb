module DeviseWhitelist
  extend ActiveSupport::Concern

  included do
    # before_filter is deprecated and removed from Rails 5.1
    before_action :configure_permitted_parameters, if: :devise_controller?
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
  
end
