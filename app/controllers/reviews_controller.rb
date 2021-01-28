class ReviewsController < ApplicationController
    before_action :move_to_index, except: [:index, :show]

    def index
        @review = Review.all.order("created_at DESC")
    end

    def new
        @review = Review.new
    end

    def create
        @review = Review.new(review_params)
        if @review.save
            redirect_to root_path
        else
            render :new
        end
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
        @review = Review.find(params[:id])
        @review.destroy
        redirect_to root_path
    end

    private

    def review_params
        params.require(:review).permit(:review_title, :commic_title, :text, :evaluation_id, :image).merge(user_id: current_user.id)
    end

    def move_to_index
        unless user_signed_in?
          redirect_to action: :index
        end
    end
end
