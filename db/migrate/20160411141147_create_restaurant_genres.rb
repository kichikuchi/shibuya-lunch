class CreateRestaurantGenres < ActiveRecord::Migration
  def change
    create_table :restaurant_genres do |t|
      t.integer :restaurant_id
      t.integer :genre_id

      t.timestamps null: false
    end
  end
end
