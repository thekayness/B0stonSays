class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

	#before filter that allows us to permit additional params using strong params
	before_action :configure_permitted_parameters, if: :devise_controller?
	private
  def configure_permitted_parameters
  	# in this case, permit our username attr
    devise_parameter_sanitizer.for(:sign_up) << :username
  end
end