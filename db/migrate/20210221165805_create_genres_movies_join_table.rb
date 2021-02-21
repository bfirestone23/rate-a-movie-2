class CreateGenresMoviesJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_table :genres_movies do |t|
      t.integer :movie_id
      t.integer :genre_id
    end
  end
end
