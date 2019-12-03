class ApplicationController < ActionController::Base
  
  before_action :configure_permitted_perameters, if: :devise_controller?
  before_action :authenticate_user!

  protected
    # def accout_params
    #   params.require(:user)(:sign_up).permit(:email, :password, :first_name, :last_name)
    # end
  
    def configure_permitted_perameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    end

end
