class BookmarksController < ApplicationController
  # before_action :set_spot, only: %i[new create]

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark.spot = @spot
    @bookmark.save
    redirect_to spot_path(@spot)
  end

  private

  def set_spot
    @spot = Spot.find(params[:spot_id])
  end

end
