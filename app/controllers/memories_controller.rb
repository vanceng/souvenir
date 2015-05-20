class MemoriesController < ApplicationController
  
  def index
    @memories = Memory.all
  end

  def show
    # @memory = Memory.find(params[:id])
  end

  def new
    @memory = Memory.new
  end

  def edit
  end


  def create
    @memory = Memory.new(memory_params) 
      if @memory.save
        redirect_to memories_path, notice: 'Souvenir was successfully created.'
      else
        render action: "new"
      end
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
