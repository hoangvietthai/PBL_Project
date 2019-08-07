class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def after_sign_in_path_for(resource)
    if current_user.type_user == 0
      stored_location_for(resource) || admins_path
    else
      root_path
    end
  end
  def configure_permitted_parameters
    added_attrs = [:name, :email, :address, :university, :major, :type_user]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end
