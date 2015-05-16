class BookmarksMemories < ActiveRecord::Migration
  def change
    create_table :bookmarks_memories, :id => false do |t|
      t.integer :bookmark_id
      t.integer :memory_id
    end
  end
end
