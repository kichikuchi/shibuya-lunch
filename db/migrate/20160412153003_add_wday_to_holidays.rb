class AddWdayToHolidays < ActiveRecord::Migration
  def change
    add_column :holidays, :wday, :integer
  end
end
