class PhotosController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]

  def index
    @photos = Photo.order('created_at DESC')
    @reviews = Review.all
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def create
    photo = Photo.new(photo_params)
    photo.save
    redirect_to photos_path
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])

    %w{url}.each do |param|
      if params[:photo][param].blank?
        params[:photo][param].delete
      end
    end

    @photo.update(photo_params)
    redirect_to photos_path
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.delete
    redirect_to photos_path
  end

  private
  def photo_params
    params.require(:photo).permit(:url, :review)
  end

end
