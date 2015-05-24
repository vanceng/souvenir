class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :website
      t.string :twitter
      t.string :facebook
      t.string :biography
      t.string :profile_photo

      t.timestamps
    end
  end
end
