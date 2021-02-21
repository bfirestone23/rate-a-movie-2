class RenameMovieColumns < ActiveRecord::Migration[6.1]
  def change
    rename_column :movies, :title, :Title
    rename_column :movies, :release_date, :Released
    rename_column :movies, :run_time, :Runtime
    rename_column :movies, :director, :Director
    rename_column :movies, :plot, :Plot
    rename_column :movies, :awards, :Awards
    rename_column :movies, :poster, :Poster
    rename_column :movies, :imdb_rating, :imdbRating
  end
end
