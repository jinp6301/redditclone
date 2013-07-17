class SubsController < ApplicationController
  before_filter :authenticate_user


  def index

  end

  def new
    @sub = Sub.new
  end

  def create
    @sub = Sub.new(params[:sub])
    if @sub.save
      redirect_to sub_url(@sub)
    else
      flash[:notice] = "Problem creating sub"
      render :new
    end

  end

  def show
    @sub = Sub.find(params[:id])

  end


end