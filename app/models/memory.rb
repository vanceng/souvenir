class Memory < ActiveRecord::Base
  belongs_to :user
  has_many :bookmarks
  
  mount_uploader :media_url, ImageUploader

end
