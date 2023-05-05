class Public::PostsController < ApplicationController

  def new
    @post = Post.new
    @user = current_user
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.save
    redirect_to posts_path
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comment = current_user.comments.new
    @comments = @post.comments
  end

  private

  def post_params
    params.require(:post).permit(:post, :user_id)
  end

end
