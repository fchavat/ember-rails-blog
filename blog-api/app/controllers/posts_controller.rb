class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    render jsonapi: Post.all, include: [:user],
           fields: { users: [:username] }
  end

  def show
    render  jsonapi: Post.find(params['id']), include: [:user],
            fields: { users: [:username] }
  end
end
