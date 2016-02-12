class PostsController < ApplicationController
  def index
    @posts = Post.all
    puts @posts.first
  end

  def show
    @post = Post.first
  end
end
