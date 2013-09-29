class CommentsController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    post.comments.create(comment_params)
    post.comments_count.increment
    respond_to do |format|
        #format.html { redirect_to :back, notice: 'Post was successfully created.' }
        format.json { render json: post }
    end
  end

  def comment_params
    params.require(:comment).permit(:message, :nickname, :email)
  end
end
