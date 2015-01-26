class ReviewsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]

  def index
    @reviews = Review.order('created_at DESC')
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    review = Review.new(review_params)
    review.save
    redirect_to reviews_path
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])

    %w{url}.each do |param|
      if params[:review][param].blank?
        params[:review][param].delete
      end
    end

    @review.update(review_params)
    redirect_to reviews_path
  end

  def destroy
    @review = Review.find(params[:id])
    @review.delete
    redirect_to reviews_path
  end

  private
  def review_params
    params.require(:review).permit(:quote)
  end
end