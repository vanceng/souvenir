class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks, :id => false do |t|
      t.integer :memory_id
      t.integer :user_id
    end
  end
end
