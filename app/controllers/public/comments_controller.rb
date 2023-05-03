class Public::CommentsController < ApplicationController

  def create
    @comment = current_user.comments.new(comment_params)
    @comment.save
    redirect_to posts_path
  end

  private

  def comment_params
    params.require(:commnet).permit(:comment, :post_id)
  end

end
