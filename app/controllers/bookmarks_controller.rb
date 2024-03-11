class BookmarksController < ApplicationController
  before_action :set_bookmark, only: :destroy
  before_action :set_spot, only: %i[create set_bookmark]

  def create
    @bookmark = Bookmark.new(spot: @spot, user: current_user)
    if @bookmark.save
      flash[:notice] = "Bien ajouté à vos favoris !"
      redirect_to spot_path(@spot)
    end
  end

  def destroy
    @bookmark.destroy
  end

  private

  def set_spot
    @spot = Spot.find(params[:spot_id])
  end

  def set_bookmark
    @bookmark = Bookmark.find_by(spot: @spot, user: current_user)
  end

end
