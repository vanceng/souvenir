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
    query = params[:memory][:latitude].to_s + ", " + params[:memory][:longitude].to_s
    location = Geocoder.search(query)
    city = location.first.city
    place_id = location.first.data["place_id"]

    new_params = memory_params.clone
    new_params[:city] = city
    new_params[:google_place_id] = place_id
    @memory = Memory.create(new_params)
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
