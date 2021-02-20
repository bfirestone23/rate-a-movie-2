class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.float :rating
      t.text :notes
      t.date :watch_date
      t.integer :user_id
      t.integer :movie_id

      t.timestamps
    end
  end
end
