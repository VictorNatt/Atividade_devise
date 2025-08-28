class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # Redireciona após login
  def after_sign_in_path_for(resource)
    dashboard_index_path
  end

  # Redireciona após cadastro
  def after_sign_up_path_for(resource)
    dashboard_index_path
  end

  # Permite campos extras se precisar (opcional)
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
    devise_parameter_sanitizer.permit(:account_update, keys: [:email])
  end
end
