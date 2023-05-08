class Public::CommentsController < ApplicationController

  def create
    @comment = current_user.comments.new(comment_params)
    @comment.save
    flash[:notice] = "コメントが完了しました"
    redirect_to posts_path
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to posts_path
  end

  private

  def comment_params
    params.require(:comment).permit(:comment, :post_id)
  end

end
