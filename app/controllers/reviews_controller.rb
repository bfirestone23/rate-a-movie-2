class ReviewsController < ApplicationController
    def index
        @reviews = Review.all
    end

    def show
        @review = Review.find_by_id(params[:id])
    end

    def new
        @review = Review.new
    end

    def create
        @review = Review.create(review_params)
        @review.user = current_user
        @review.save

        redirect_to review_path(@review)
    end

    def edit
    end

    def update
    end

    private

    def review_params
        params.require(:review).permit(:rating, :watch_date, :notes, :movie_id, :user_id)
    end
end
