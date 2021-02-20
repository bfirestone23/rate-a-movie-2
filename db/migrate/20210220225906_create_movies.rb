class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.date :release_date
      t.string :run_time
      t.string :director
      t.string :plot
      t.string :awards
      t.string :poster
      t.float :imdb_rating

      t.timestamps
    end
  end
end
