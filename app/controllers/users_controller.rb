class UsersController < ApplicationController
  before_action :authenticate, :only => [:edit, :update]

  def new
    @user = User.new
  end

  def show
    @user = current_user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      User.authenticate(@user.email, @user.password)
      profile = Profile.new
      profile.save
      @user.profile = profile
      session[:user_id] = @user.id
      @current_user = @user
      redirect_to poems_path,  :notice => 'Uzytkownik dodany i zalogowany. Zaktualizuj swoj Profil'
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
      :notice => 'Zaktualizowano informacje o uzytkowniku.'
    else
      render :action => 'edit'
    end
  end

  def chapters
    @user = current_user
    @chapters = @user.chapters

    render @chapters
  end

  def user_params
    params.require(:user).permit(:nickname, :email, :password, :password_confirmation)
  end
end
