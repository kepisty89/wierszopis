class CommentsController < ApplicationController
  before_filter :load_poem

  def create
    @comment = @poem.comments.new(params[:comment])
    if @comment.save
      redirect_to @poem, :notice => 'Thanks for your comment'
    else
      redirect_to @poem, :alert => 'Unable to add comment'
    end
  end

  def destroy
    @comment = @poem.comments.find(params[:id])
    @comment.destroy
    redirect_to @poem, :notice => 'Comment deleted'
  end

  private
  def load_poem
    @poem = Poem.find(params[:poem_id])
  end
end
