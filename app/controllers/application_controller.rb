class ApplicationController < ActionController::Base
	protect_from_forgery with: :null_session

	respond_to :html, :json



	#before filter that allows us to permit additional params using strong params
	before_action :configure_permitted_parameters, if: :devise_controller?
	private
  def configure_permitted_parameters
  	# in this case, permit our username attr
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end