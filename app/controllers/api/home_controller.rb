module API
  class HomeController < ApplicationController
  respond_to :json

    def index
      @memories = Memory.all
      respond_with @memories
    end

    def show
      @memory = Memory.find(city: params[:search], category: params[:category])
      respond_with @memories
    end

end