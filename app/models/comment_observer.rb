class CommentObserver < ActiveRecord::Observer
  def after_create(comment)
    puts "Told author about new comment"
  end
end
