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
end
