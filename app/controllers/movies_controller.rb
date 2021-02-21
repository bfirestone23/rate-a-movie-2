class MoviesController < ApplicationController
    def index
        @movies = Movie.all
    end

    def show
        @movie = Movie.find_by(params[:id])
    end

    def new
        @movie = Movie.new
    end

    def create
        @movie = Movie.new(movie_params)

        escaped_title = URI.escape(@movie.title)
        hash = OmdbService.new.get_all_data_by_title(escaped_title)
        binding.pry
    end

    def edit
    end

    def update
    end

    private

    def movie_params
        params.require(:movie).permit(:title, :release_date, :run_time, :director, :plot, :awards, :poster, :imdb_rating)
    end
end
