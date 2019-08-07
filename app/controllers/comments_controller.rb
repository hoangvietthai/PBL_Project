class CommentsController < ApplicationController
  before_action :comment_params, :only => [:create]
  def create
    @comment = Comment.new
    @comment = current_user.comments.build comment_params
    @comment.save
    redirect_to request.referrer
  end

  private
  def comment_params
    params.require(:comment).permit :content, :job_id
  end
end
