class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genres do |t|
      t.integer :restaurant_id
      t.string :genre

      t.timestamps null: false
    end
  end
end
