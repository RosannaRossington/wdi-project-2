class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def after_sign_in_path_for(resource)
    home_path
  end

  protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name, :image, :profile_image])
      
        devise_parameter_sanitizer.permit(:account_update, keys: [:username, :image, :profile_image])
    end

end
