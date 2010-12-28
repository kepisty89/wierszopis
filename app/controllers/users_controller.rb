class UsersController < ApplicationController
  before_filter :authenticate, :only => [:edit, :update]
  
  def new
    @user = User.new
  end

  def show
    @user = current_user
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      User.authenticate(@user.email, @user.password)
      redirect_to poems_path, :notice => 'User successfully added.'
    else
      render :action => 'new'
    end
  end
  
  def edit
    @user = current_user
  end
  
  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      redirect_to poems_path,
      :notice => 'Updated user information successfully.'
    else
      render :action => 'edit'
    end
  end

  def chapters
    @user = current_user
    @chapters = @user.chapters

    render @chapters
  end
end
