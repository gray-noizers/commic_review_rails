class ReviewsController < ApplicationController
    def index
        @review = Review.all
    end

    def new
        @review = Review.new
    end

    def create
        @review = Review.new(review_params)
        redirect_to root_path
    end

    private

    def review_params
        params.require(:review).permit(:review_title, :commic_title, :text)
    end
end
