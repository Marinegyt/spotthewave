class ReviewsController < ApplicationController

  def show
    authorize @review
  end

  def like
    @review = Review.find(params[:id])
    Like.create(user_id: current_user.id, review_id: @review.id)
    redirect_to feed_path
  end

  def create
    @spot = Spot.find(params[:spot_id])
    @review = Review.new(review_params)
    @review.spot = @spot
    @review.user = current_user
    if @review.save

      broadcast_to_subscribed_users

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

  def broadcast_to_subscribed_users
    # Find all users subscribed to the spot
    users = @spot.users

    # For each of these users
    users.each do |user|
      # Broadcast the review to their feed
      FeedChannel.broadcast_to(
        user,
        render_to_string(partial: "shared/feed_card_review", locals: { instance: @review })
      )
    end
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
