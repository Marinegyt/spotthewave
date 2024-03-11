class ReviewsController < ApplicationController

  def show
    authorize @review
  end

  def create
    @spot = Spot.find(params[:spot_id])
    @review = Review.new(review_params)
    @review.spot = @spot
    @review.user = current_user
    if @review.save
      redirect_to spot_path(@spot)
    else
      flash.now[:alert] = @review.errors.full_messages.join(', ')
      render "spots/show", status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rate, :difficulty)
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
