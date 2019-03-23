class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  protected

    def configure_permitted_parameters
    	raise
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :name, :surname,:dni ) }
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, :name, :surname,:dni ) }
    end
end
