module API
  class MemoriesController < ApplicationController
  respond_to :json

    def index
      @memories = Memory.all
      respond_with @memories
    end

    def show
      @memory = Memory.find(params[:id])
      respond_with @memory 
    end

    def new
      @memory = Memory.new
      respond_with @memory 
    end

    def edit
      @memory = Memory.find(params[:id])
      respond_with @memory 
    end

    def create
      @memory = Memory.create(memory_params)
      respond_with @memory 
      # need to also respond with a failure message or 'false'
    end

    def update
      @memory = Memory.find(params[:id])
      @memory.update_attributes(movie_params)
      respond_with @memory 
    end

    def destroy
      @memory = Memory.find(params[:id])
      @memory.destroy
      respond_with @memory 
    end

    protected

    def memory_params
      params.require(:memory).permit(:title, :description, :category, :latitude, :longitude, :city, :google_place_id, :media_url, :created_at, :updated_at)
    end
  end

end