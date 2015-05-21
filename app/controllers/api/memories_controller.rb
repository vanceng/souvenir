module API
  class MemoriesController < ApplicationController
  respond_to :json

    def index

      if params[:user_id] && params[:search]
        @memories = Memory.where(user_id: params[:user_id], city: params[:search])
      elsif params[:user_id]
        @memories = Memory.where(user_id: params[:user_id])
      elsif params[:search]
        @memories = Memory.where(city: params[:search])
      else 
      @memories = Memory.all
      end
      respond_with @memories

    end

    def show
      @memory = Memory.find(params[:id])
      respond_with @memories
    end

    def create
      @memory = Memory.create(memory_params)
      respond_with @memory 
    end

    def update
      @memory = Memory.find(params[:id])
      @memory.update_attributes(memory_params)
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