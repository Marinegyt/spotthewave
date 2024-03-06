class SpotsController < ApplicationController

  def index
    @spots = Spot.all
  end

  def top
    @spots = Spot.where(rate: 5)
  end
end
