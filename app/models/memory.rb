class Memory < ActiveRecord::Base
  belongs_to :user
  has_many :bookmarks

  before_create :get_city_and_place_id
  
  mount_uploader :media_url, ImageUploader

  def get_city_and_place_id
    query = "#{self.latitude},#{self.longitude}"
    location = Geocoder.search(query)
    self.city = location.first.city
    self.google_place_id = location.first.data["place_id"]
  end

end
