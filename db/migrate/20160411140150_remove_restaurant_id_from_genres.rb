class RemoveRestaurantIdFromGenres < ActiveRecord::Migration
  def change
    remove_column :genres, :restaurant_id, :integer
  end
end
