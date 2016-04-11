class AddGenreIdToGenres < ActiveRecord::Migration
  def change
    add_column :genres, :genre_id, :integer
  end
end
