class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def user_chapters(user)
    return user.chapters.all
  end

  helper_method :user_chapters
  
  def recent_poems
    return Poem.recent(6)
  end

  helper_method :recent_poems
  
  protected
  # Returns currently logged in User or nil if there isn't one
  def current_user
    return unless session[:user_id]
    @current_user ||= User.find_by_id(session[:user_id])
  end

  # Make current_user available in templates as a helper
  helper_method :current_user

  # Filter method to enforce a login requirement
  # Apply as a before_filter on any controller you want to protect
  def authenticate
    logged_in? ? true : access_denied
  end

  # Predicate method to test for a logged in user
  def logged_in?
    current_user.is_a? User
  end

  # Make logged_in? available in templates as a helper
  helper_method :logged_in?

  def access_denied
    redirect_to login_path, :notice => "Zaloguj sie by przejsc dalej" and return false
  end
end
