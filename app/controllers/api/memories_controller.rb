module API
  class MemoriesController < ApplicationController
  respond_to :json

    def index

      if params[:id]
         @memories = Memory.where(id: params[:id])
      elsif params[:user_id] && params[:search]
        @memories = Memory.where(user_id: params[:user_id], city: params[:search])
      elsif params[:user_id] && params[:city]
        @memories = Memory.where(user_id: params[:user_id], city: params[:city])
      elsif params[:user_id]
        @memories = Memory.where(user_id: params[:user_id])
      elsif params[:search]
        if params[:search].blank?
          @memories = Memory.all 
        else
          @memories = Memory.where(city: params[:search])
        end
      else 
        @memories = Memory.all
      end
        respond_with @memories
    end

    def show
      @memory = Memory.find(params[:id])
      respond_with @memory
    end

    def create
      @memory = Memory.create(memory_params)
      binding.pry
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
      params.require(:memory).permit(:user_id, :title, :description, :category, :latitude, :longitude, :city, :google_place_id, :media_url, :created_at, :updated_at)
    end
  end

end