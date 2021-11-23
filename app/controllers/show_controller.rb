class ShowController < ApplicationController
  def create
    show = Show.new(show_params)
    if show.save
      render json: show
    else
      render json: { error: show.errors.messages }, status: 422
    end
  end

  def update
    show = Show.find_by(params[:id])
    if show.update(show_params)
      render json: show
    else
      render json: { error: show.errors.messages }, status: 422
    end
  end

  def destroy
    show = show.find_by(params[:id])
    if show.destroy
      head :no_content # Returns a response that has no content (merely headers). The options argument is interpreted to be a hash of header names and values.
    else
      render json: { error: show.errors.messages }, status: 422
    end
  end

  private

  def show_params
    params.require(:show).permit(:venue, :date, :loadin, :guarantee, :merch, :green_room, :wifi)
  end
end
