class SessionsController < ApplicationController

  before_filter :authenticate_user, only: ["destroy"]

  def new


  end

  def create
    @user = User.find_by_name(params[:user][:name])
    if @user
      if @user.authenticate(params[:user][:password])
        session[:token] = SecureRandom.urlsafe_base64(10)
        @user.token = session[:token] 
        @user.save
        flash[:notice] = "You have logged in"
        render :new #change this
      else
        flash[:notice] = "Problem in logging in"
        render :new
      end
    else
      flash[:notice] = "Problem in logging in"
      render :new 
    end

  end

  def destroy
    @current_user = nil
    session[:token] = nil
    flash[:notice] = "Logged out!"
    render :new

  end







end