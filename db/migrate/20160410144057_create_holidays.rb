class CreateHolidays < ActiveRecord::Migration
  def change
    create_table :holidays do |t|
      t.integer :restaurant_id
      t.integer :dotw

      t.timestamps null: false
    end
  end
end
