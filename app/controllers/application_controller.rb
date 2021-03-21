class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resourse)
    root_path
  end
  
  def after_sign_out_path_for(resourse)
    root_path
  end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name, :kana_last_name, :kana_first_name, :email,
      :postcode, :address, :phone_number, :password, :password_confirmation])
    end
end
