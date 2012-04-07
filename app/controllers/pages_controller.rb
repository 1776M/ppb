class PagesController < ApplicationController

  def home
    @joiner = Joiner.new
  end

  def help
  end

  def about
  end

end
