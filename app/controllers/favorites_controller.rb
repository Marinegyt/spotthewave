class FavoritesController < ApplicationController
  def index
    @spots = current_user.bookmarks.map(&:spot)
    # current_user.bookmarks.map { |bookmark| bookmark.spot }
    # current_user.bookmarks.map do
    #   bookmark.spot
    # end
  end
end
