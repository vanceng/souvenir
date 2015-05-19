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
    memory_params[:city] = city

    # @memory = Memory.create(memory_params)
    @memory = Memory.create(title: params[:memory][:title], description: params[:memory][:description], category: params[:memory][:category], latitude: params[:memory][:latitude], longitude: params[:memory][:longitude], city: city, google_place_id: params[:memory][:google_place_id], media_url: params[:memory][:media_url])
    binding.pry

  end

  def update
  end

  def destroy
  end

  protected

  def memory_params
    params.require(:memory).permit(:title, :description, :category, :latitude, :longitude, :city, :google_place_id, :media_url, :created_at, :updated_at)
  end

  #     def find_city(latitude, longitude)
  #   p latitude, longitude
  #   query = latitude.to_s + "," + longitude.to_s 
  #   result = Geocoder.search(query).first 
  #   p result
  #   puts "THIS IS A CITY:" 
  #   if (result) 
  #       return city = result.city
  #       puts city
  #   end
  # end

  # def create
  #   p params
  #   p params[:longitude], params[:latitude]
  #   city = find_city(params[:longitude], params[:latitude])
  #   puts "THIS IS A CITY:" 
  #   p city
    # @memory = Memory.create(title: params[:title], description: params[:description], category: params[:category], latitude: params[:latitude], longitude: params[:longitude], city: city, google_place_id: params[:google_place_id], media_url: params[:media_url])
  # end



end
