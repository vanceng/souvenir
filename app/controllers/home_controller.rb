class HomeController < ApplicationController

  def index
    render "index"
  end

  def show
    # @memory = Memory.find(params[:search])
    render "show"
  end

end

