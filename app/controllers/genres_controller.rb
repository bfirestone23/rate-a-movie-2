class GenresController < ApplicationController
    def index
        @genres = Genre.all
    end

    def show
        @genre = Genre.find_by(params[:id])
    end

    def new
        @genre = Genre.new
    end

    def create
    end

    def edit
    end

    def update
    end

    private
    def genre_params
        params.require(:genre).permit(:name)
    end
end
