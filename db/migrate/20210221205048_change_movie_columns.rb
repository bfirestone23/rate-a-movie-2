class ChangeMovieColumns < ActiveRecord::Migration[6.1]
  def change
    change_column :movies, :Released, :string
    change_column :movies, :imdbRating, :string
  end
end
