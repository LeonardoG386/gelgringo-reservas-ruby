class UsersController < ApplicationController
   protect_from_forgery with: :exception
   before_action :authenticate_user!, :configure_permitted_parameters, if: :devise_controller?

	def show
		@user = User.find (params[:id])

	end
  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name, :surname, :dni)
  end


    # protected

    # def configure_permitted_parameters
    #     devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :name, :surname,:dni ) }
    #     devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, :name, :surname,:dni ) }
    # end
end
