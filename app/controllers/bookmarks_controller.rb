class BookmarksController < ApplicationController

  def create
    @spot = Spot.find(params[:spot_id])
    @bookmark = Bookmark.new(spot: @spot, user: current_user)
    if @bookmark.save
      redirect_to spot_path(@spot)
    end
  end

  def destroy
    @spot = Spot.find(params[:spot_id])
    @bookmark = Bookmark.find_by(spot: @spot, user: current_user)
    if @bookmark.destroy
      redirect_to spot_path(@spot)
    end
  end

end
