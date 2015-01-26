class AboutController < ApplicationController

  def index
    @photos = Photo.order('created_at ASC')
    @reviews = Review.order('created_at DESC')
  end

end