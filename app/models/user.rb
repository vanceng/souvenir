class User < ActiveRecord::Base
  has_many :memories
  has_many :bookmarks
  has_many :bookmarks_memories, through: :bookmarks, class_name: "Memory"

  mount_uploader :image, ImageUploader


  has_secure_password

end
