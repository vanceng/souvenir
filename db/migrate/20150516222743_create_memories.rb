class CreateMemories < ActiveRecord::Migration
  def change
    create_table :memories do |t|
      t.string :title
      t.string :description
      t.string :category
      t.string :latitude
      t.string :longitude
      t.string :city
      t.string :google_place_id
      t.string :media_url

      t.timestamps
    end
  end
end
