class Memory < ActiveRecord::Base
  belongs_to :user
  has_many :bookmarks
  
  mount_uploader :media_url, ImageUploader

def self.address(query, options = {})
  if (results = search(query, options)).size > 0
    results.first.address
  end
end

end
