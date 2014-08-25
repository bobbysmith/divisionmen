class SongsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    song = Song.new(song_params)
    song.save
    redirect_to songs_path
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])

    %w{title url}.each do |param|
      if params[:song][param].blank?
        params[:song][param].delete
      end
    end

    @song.update(song_params)
    redirect_to songs_path
  end

  def destroy
    @song = Song.find(params[:id])
    @song.delete
    redirect_to songs_path
  end

  private
  def song_params
    params.require(:song).permit(:url, :title)
  end

end
