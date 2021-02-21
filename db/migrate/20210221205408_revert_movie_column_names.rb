class RevertMovieColumnNames < ActiveRecord::Migration[6.1]
  def change
    rename_column :movies, :Title, :title
    rename_column :movies, :Released, :released
    rename_column :movies, :Runtime, :runtime
    rename_column :movies, :Director, :director
    rename_column :movies, :Plot, :plot
    rename_column :movies, :Awards, :awards
    rename_column :movies, :Poster, :poster
    rename_column :movies, :imdbRating, :imdbrating
  end
end
