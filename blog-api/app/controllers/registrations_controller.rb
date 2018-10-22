class RegistrationsController < Devise::RegistrationsController
  deserializable_resource :user, only: :create
  before_action :configure_permitted_parameters
  respond_to :json

  def create
    build_resource(sign_up_params)
    resource.save
    if resource.errors.empty?
      render jsonapi: resource
    else
      render jsonapi_errors: resource.errors, status: :bad_request
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[username email])
  end
end
