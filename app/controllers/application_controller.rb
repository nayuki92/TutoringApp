class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  private
    def sign_in_required
      redirect_to new_user_session_url unless user_signed_in?
    end

  before_action :configure_permitted_parameters, if: :devise_controller?
  protected

  def configure_permitted_parameters
    added_attrs = [:email,:user_name, :password]
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end


end
