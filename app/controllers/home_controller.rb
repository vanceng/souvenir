class HomeController < ApplicationController

  def index
    render "index"
  end

  def show
<<<<<<< HEAD
    @memories = params[:search]
=======
>>>>>>> ac6adfd261ea18cd0af9247500a3fc7f0e06841a
    render "show"
  end

end

