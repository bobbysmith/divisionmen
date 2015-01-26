class AboutController < ApplicationController

  def index
    @photos = Photo.all
    @reviews = Review.all 
  end

end