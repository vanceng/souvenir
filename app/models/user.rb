class User < ActiveRecord::Base
  has_many :memories
  has_many :bookmarks
end
