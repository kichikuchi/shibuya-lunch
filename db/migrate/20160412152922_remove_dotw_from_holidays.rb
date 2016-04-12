class RemoveDotwFromHolidays < ActiveRecord::Migration
  def change
    remove_column :holidays, :dotw, :integer
  end
end
