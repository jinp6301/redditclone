class UsersController < ApplicationController

  before_filter :authenticate_user, except: ["new", "create"]

  def new
    @user = User.new
  end

  def create

    @user = User.new(params[:user])
    if @user.save
      session[:token] = SecureRandom.urlsafe_base64(10)
      @user.token = session[:token] 
      @user.save
      #redirect_to posts_url
      render :new
    else
      flash[:notice] = "Problem in creating new user"
      render :new
    end

  end


end
