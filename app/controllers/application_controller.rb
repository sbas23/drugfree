class ApplicationController < ActionController::Base
	before_action :configure_devise_params, if: :devise_controller?

	def configure_devise_params
	   devise_parameter_sanitizer.permit(:sign_up) do |user|
	     user.permit(:name, :lastname, :document, :phone, :profession, :fundation_id, :role_id, :state_id, :email, :password, :password_confirmation)
	   end
	end
end
