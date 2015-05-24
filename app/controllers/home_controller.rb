class HomeController < ApplicationController

  def index
    render "index"
  end

  def show
    @memories = params[:search]
    render "show"
  end

end

