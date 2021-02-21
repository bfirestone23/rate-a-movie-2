class MoviesController < ApplicationController
    def index
        @movies = Movie.all
    end

    def show
        @movie = Movie.find_by_id(params[:id])
    end

    def new
        @movie = Movie.new
    end

    def create
        @movie = Movie.new(movie_params)

        escaped_title = URI.escape(@movie.title)

        hash = OmdbService.new
        movie_data = hash.get_all_data_by_title(escaped_title)
        genres = hash.parse_genres

        @movie.update(movie_data)

        redirect_to movie_path(@movie)
    end

    def edit
    end

    def update
    end

    private

    def movie_params
        params.require(:movie).permit(:title)
    end
end
