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
    end

    def edit
    end

    def update
    end
end
