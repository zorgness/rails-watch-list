# frozen_string_literal: true

class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @list = List.find(params[:list_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @list = List.find(params[:list_id])
    @review.list = @list
    @review.save
    if @review.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
