class User < ActiveRecord::Base
  has_many :memories
  has_many :bookmarks
  has_many :bookmarked_memories, through: :bookmarks, class_name: "Memory"

  mount_uploader :profile_photo, ImageUploader


  has_secure_password

  def full_name
    "#{first_name} #{last_name}"
  end

end
