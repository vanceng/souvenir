class User < ActiveRecord::Base
  has_many :memories
  has_many :bookmarks
  has_many :bookmarks_memories, through: :bookmarks, class_name: "Memory"
end
