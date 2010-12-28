class CommentsController < ApplicationController
  before_filter :load_poem, :except => :destroy
  before_filter :authenticate, :only => :destroy

  def create
    @comment = @poem.comments.new(params[:comment])
    if @comment.save
      respond_to do |format|
        format.html { redirect_to @poem, :notice => 'Thanks for your comment' }
        format.js
      end
    else
      respond_to do |format|
        format.html { redirect_to @poem, :alert => 'Unable to add comment' }
        format.js { render 'fail_create.js.erb' }
      end
    end
  end

  def destroy
    @poem = current_user.poems.find(params[:poem_id])
    @comment = @poem.comments.find(params[:id])
    respond_to do |format|
      format.html { redirect_to @poem, :notice => 'Comment deleted' }
      format.js
    end
    @comment.destroy
  end

  private
  def load_poem
    @poem = Poem.find(params[:poem_id])
  end
end
