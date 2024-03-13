class FavoritesController < ApplicationController
  def index

    @spots = current_user.bookmarks.map(&:spot)
    # current_user.bookmarks.map { |bookmark| bookmark.spot }
    # current_user.bookmarks.map do
    #   bookmark.spot
    # end
    @markers = @spots.map do |spot|
      {
        lat: spot.latitude,
        lng: spot.longitude,
        info_window_html: render_to_string(partial: "spots/info_window", locals: {spot: spot}),
        marker_html: render_to_string(partial: "spots/marker", locals: {spot: spot}),
      }
    end
  end
end
