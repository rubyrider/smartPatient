class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception

  before_action :configure_devise_permitted_parameters, if: :devise_controller?
  helper_method :current_position
  helper_method :current_position=

  protected

  def configure_devise_permitted_parameters
    registration_params = [:user_name, :first_name, :email ,:last_name, :age, :gender ,:password, :password_confirmation]

    if params[:action] == 'update'
      devise_parameter_sanitizer.for(:account_update) {
          |u| u.permit(registration_params << :current_password)
      }
    elsif params[:action] == 'create'
      devise_parameter_sanitizer.for(:sign_up) {
          |u| u.permit(registration_params)
      }
    end
  end

  def current_position=(lat, lng)
    session[:lat], session[:lng] = lat, lng
  end


  def current_position
    return [] if current_user.nil?
    [session[:lat], session[:lng]]
  end


end
