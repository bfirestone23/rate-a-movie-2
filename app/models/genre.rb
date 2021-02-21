class Genre < ApplicationRecord
    has_many :movies, through: :genres_movies
end
