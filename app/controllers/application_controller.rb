class ApplicationController < ActionController::API
  include AuthConcern

  before_filter :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user_from_token!

  respond_to :json


  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password_confirmation])
  end
end
