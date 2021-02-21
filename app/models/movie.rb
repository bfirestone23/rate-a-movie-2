class Movie < ApplicationRecord
    has_many :genres, through: :genres_movies
    has_many :reviews
end
