class EmailsController < ApplicationController

  def new
      @email = Email.new
  end

  def show
      @email = Email.find(params[:id])
  end

  def create
    @email = Email.new(params[:email])
    if @email.save 
      flash[:success] = "You have created a new email"
      redirect_to root_path
    else
      @title = "New request"
      render 'new'
    end
  end

  def edit
      @email = Email.find(params[:id])   
  end

  def update
    @email = Email.find(params[:id])
    if @email.update_attributes(params[:email])
      flash[:success] = "Request updated"
      redirect_to root_path
    else
      @title = "Edit email"
      render 'edit'
    end
  end
 
  def index
    @emails = Email.all
  end

  def destroy
    Email.find(params[:id]).destroy
    flash[:success] = "Request deleted"
    redirect_to emails_path
  end

end
