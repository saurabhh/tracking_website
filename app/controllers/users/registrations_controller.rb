class Users::RegistrationsController < Devise::RegistrationsController
  # before_filter :configure_permitted_parameters

  def create
    super
    @user = resource
    sign_out(resource)
  end

  def update
    super
    flash[:success] = 'Your password has been updated.'
  end

  # protected
  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.for(:sign_up).push()
  # end
end
