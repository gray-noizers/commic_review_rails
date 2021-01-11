class ReviewsController < ApplicationController
    before_action :move_to_index, except: [:index, :show]

    def index
        @review = Review.all
    end

    def new
        @review = Review.new
    end

    def create
        @review = Review.create(review_params)
        redirect_to root_path
    end

    def show
        @review = Review.find(params[:id])
    end

    def edit
        @review = Review.find(params[:id])
        if @review.user != current_user
            redirect_to root_path
        end
    end

    def update
        review = Review.find(params[:id])
        review.update(review_params)
        redirect_to root_path
    end

    def destroy
    end

    private

    def review_params
        params.require(:review).permit(:review_title, :commic_title, :text, :evaluation_id, :image)
    end

    def move_to_index
        unless user_signed_in?
          redirect_to action: :index
        end
    end
end
