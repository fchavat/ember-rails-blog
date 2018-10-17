class PostsController < ApplicationController
  def index
    render jsonapi: Post.all, include: [:user],
           fields: { users: [:username] }
  end
end
