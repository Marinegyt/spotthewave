class ReviewsController < ApplicationController

  def show
    authorize @review
  end

  # def new
  #   @review = Review.new
  #   authorize @review
  # end

  # def edit
  #   authorize @review
  #   # [...]
  # end

  # def update
  #   authorize @review
  #   # [...]
  # end

  # def destroy
  #   authorize @review
  # end
end
