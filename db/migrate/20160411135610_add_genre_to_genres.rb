class AddGenreToGenres < ActiveRecord::Migration
  def change
    add_column :genres, :genre, :string
  end
end
