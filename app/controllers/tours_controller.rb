class ToursController < ApplicationController
  # before_filter :authenticate_user!

  def index
    @tours = Tour.all
  end

  def show
    @tour = Tour.find(params[:id])
  end

  def new
    @tour = Tour.new
  end

  def create
    tour = Tour.new(tour_params)
    tour.save
    redirect_to tours_path
  end

  def edit
    @tour = Tour.find(params[:id])
  end

  def update
    @tour = Tour.find(params[:id])

    %w{venue url city date}.each do |param_name|
      if params[:tour][param_name].blank?
        params[:tour].delete(param_name)
      end
    end

    @tour.update(tour_params)
    redirect_to tours_path
  end

  def destroy
    @tour = Tour.find(params[:id])
    @tour.delete
    redirect_to tours_path
  end

  private

  def tour_params
    params.require(:tour).permit(:venue, :city, :url, :date)
  end

end
