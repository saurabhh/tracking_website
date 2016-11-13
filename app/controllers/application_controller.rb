class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  devise_group :user, contains: [:user]
  before_action :authenticate_user!, unless: :active_admin?

  before_action do |controller|
    if controller_name == 'sessions' || controller_name == 'registrations'
      if action_name == 'new' || action_name == 'create'
        redirect_to root_path if user_signed_in?
      end
    end
  end

  protected

  def active_admin?
    if params[:controller] =~ /active_admin/
      true
    else
      false
    end
  end

  private

  def after_sign_out_path_for(resource)
    case resource
    when :user
      new_user_session_path
    else
      root_path
    end
  end

end
