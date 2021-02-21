class ReviewsController < ApplicationController
    def index
        @reviews = Review.all
    end

    def show
        @review = Review.find_by(params[:id])
    end

    def new
        @review = Review.new
    end

    def create
    end

    def edit
    end

    def update
    end

    private

    def review_params
        params.require(:review).permit(:rating, :watch_date, :notes)
    end
end
