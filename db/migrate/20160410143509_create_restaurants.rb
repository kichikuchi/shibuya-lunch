class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.text :note
      t.string :tabelog_url

      t.timestamps null: false
    end
  end
end
