class GenresController < ApplicationController
    def index
        @genres = Genre.all
    end

    def show
        @genre = Genre.find_by(params[:id])
    end

    private
    def genre_params
        params.require(:genre).permit(:name)
    end
end
