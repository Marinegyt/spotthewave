class FeedsController < ApplicationController
  def show
    @feed = current_user.feed
    @spots = Spot.all.geocoded
    @markers = @spots.geocoded.map do |spot|
      {
        lat: spot.latitude,
        lng: spot.longitude,
        info_window_html: render_to_string(partial: "spots/info_window", locals: {spot: spot}),
        marker_html: render_to_string(partial: "spots/marker", locals: {spot: spot}),
      }
    end
  end
end
