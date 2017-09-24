class CommentsController < ApplicationController
  before_action :find_commentable

  def new
    @comment = Comment.new
  end

  def create
    @comment = @commentable.comments.new(comment_params)
    @parent = @commentable
    until @parent.is_a?(Log)
      @parent = @parent.commentable
    end
    respond_to do |format|
      if @comment.save
        if @commentable.is_a?(Comment)
          replying_to = @commentable.user
        end
        format.html { redirect_to @parent, notice: 'Your comment was successfully posted.' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id)
  end

  def find_commentable
    @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
    @commentable = Log.find_by_id(params[:log_id]) if params[:log_id]
  end
end