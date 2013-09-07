class CommentsController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    post.comments.create(comment_params)

    redirect_to :back
    
  end

  def comment_params
    params.require(:comment).permit(:message, :nickname, :email)
  end
end
