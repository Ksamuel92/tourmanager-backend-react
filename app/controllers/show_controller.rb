class ShowController < ApplicationController
  def index
    shows = Show.all
    render json: shows
  end

  def create; end

  def update; end

  def destroy; end

  private

  def show_params
    params.require(:show).permit(:venue, :date, :loadin, :guarantee, :merch, :green_room, :wifi)
  end
end
