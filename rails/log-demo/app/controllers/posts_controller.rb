class PostsController < ApplicationController
  def index
    @posts = Post.all
    logger.info(@posts.first)
    logger.debug("foobar")
  end

  def show
    @post = Post.first
  end
end
