class NamesController < ApplicationController

  def new
      @name = Name.new
  end

  def show
      @name = Name.find(params[:id])
  end

  def create
    @name = Name.new(params[:name])
    if @name.save 
      flash[:success] = "Thank you for your interest, we will be in touch"
      redirect_to '/buynow'
    else
      flash[:success] = "The form could not be submitted, please retry"
      redirect_to '/'
    end
  end

  def edit
      @name = Name.find(params[:id])   
  end

  def update
    @name = Name.find(params[:id])
    if @name.update_attributes(params[:name])
      flash[:success] = "Request updated"
      redirect_to '/'
    else
      @title = "Edit email"
      render 'edit'
    end
  end
 
  def index
    @names = Name.all
  end

  def destroy
    Name.find(params[:id]).destroy
    flash[:success] = "Request deleted"
    redirect_to '/'
  end


end
