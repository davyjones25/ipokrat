class ApplicationController < ActionController::Base
  include Pundit

  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

#  def pundit_user
#  	AuthorizationContext.new(current_user, user.role)
#  end


# Pundit: white-list approach.
#  after_action :verify_authorized, except: :index, unless: :skip_pundit?
#  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  # Uncomment when you *really understand* Pundit!
#  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  # def user_not_authorized
  #   flash[:alert] = "You are not authorized to perform this action."
  #   redirect_to(root_path)
  # end

  protected

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
    	 user_params.permit(:role, :email, :password, :password_confirmation)
    end
  end

  private

  def after_sign_in_path_for(resource)
    # Here you can write logic based on roles to return different after sign in paths
    if current_user.role == "doctor"
    	new_doctor_path
    elsif current_user.role == "client"
			new_client_path
    elsif current_user.role == "retailer"
			new_retailer_path
    else
      new_user_registration_path
    end
  end

#  def skip_pundit?
#    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
#  end

#  def user_not_authorized
#    flash[:alert] = "You are not authorized to perform this action."
#    redirect_to(root_path)
#  end
end
