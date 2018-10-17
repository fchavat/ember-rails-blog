class SessionsController < Devise::SessionsController
  respond_to :json

  private

  def respond_with(resource, _opts = {})
    render json: {
      username: resource.username,
      token: request.env['warden-jwt_auth.token']
    }
  end

  def respond_to_on_destroy
    head :no_content
  end
end
