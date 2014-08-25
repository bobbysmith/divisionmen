class VideosController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]

  def index
    @videos = Video.all
  end

  def show
    @video = Video.find(params[:id])
  end

  def new
    @video = Video.new
  end

  def create
    video = Video.new(video_params)
    video.save
    redirect_to videos_path
  end

  def edit
    @video = Video.find(params[:id])
  end

  def update
    @video = Video.find(params[:id])

    %w{title url}.each do |param|
      if params[:video][param].blank?
        params[:video][param].delete
      end
    end

    @video.update(video_params)
    redirect_to videos_path
  end

  def destroy
    @video = Video.find(params[:id])
    @video.delete
    redirect_to videos_path
  end

  private
  def video_params
    params.require(:video).permit(:url, :title)
  end

end
