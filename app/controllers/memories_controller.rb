class MemoriesController < ApplicationController
  
  def index
    @memories = Memory.all
  end

  def show
    @memory = Memory.find(params[:id])
  end

  def new
    @memory = Memory.new
  end

  def edit
  end

  def create
    @memory = Memory.create(memory_params)
  end

  def update
  end

  def destroy
  end

  protected

  def memory_params
    params.require(:memory).permit(:title, :description, :category, :latitude, :longitude, :city, :google_place_id, :media_url, :created_at, :updated_at)
  end

end
