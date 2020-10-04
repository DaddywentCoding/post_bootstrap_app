class PostsController < ApplicationController
  def index
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.create!(posts_params)
    redirect_to post
  end
  
  private

  def posts_params
    params.require(:post).permit(:title, :content)
  end
    
end
