class UsersController < ApplicationController
  before_action :authenticate_user!
  def me
    render jsonapi: current_user, include: params['include']
  end

  def show
    user = User.find(params['id'])
    render jsonapi: user, include: params['include']
  end

  def current_following
    render jsonapi: current_user.following
  end

  def current_followers
    render jsonapi: current_user.followers
  end
end
