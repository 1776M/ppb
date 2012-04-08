class JoinersController < ApplicationController


  def new
      @joiner = Joiner.new
  end

  def show
      @joiner = Joiner.find(params[:id])
  end

  def create
    @joiner = Joiner.new(params[:email])
    if @joiner.save 
      flash[:success] = "Thank you for your interest, we will be in touch"
      redirect_to '/'
    else
      @title = "New request"
      render 'new'
    end
  end

  def edit
      @joiner = Joiner.find(params[:id])   
  end

  def update
    @joiner = Joiner.find(params[:id])
    if @joiner.update_attributes(params[:joiner])
      flash[:success] = "Request updated"
      redirect_to '/'
    else
      @title = "Edit email"
      render 'edit'
    end
  end
 
  def index
    @joiners = Joiner.all
  end

  def destroy
    Email.find(params[:id]).destroy
    flash[:success] = "Request deleted"
    redirect_to '/'
  end

end
