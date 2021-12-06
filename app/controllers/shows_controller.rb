class ShowsController < ApplicationController
  # before_action :authenticate_user!

  def index
    shows = Show.all
    render json: shows
  end

  def create
    # byebug
    show = Show.new(show_params)
    show.wifi_network = params[:wifi_network]
    show.wifi_password = params[:wifi_password]
    if show.save
      render json: show
    else
      render json: { error: show.errors.messages }, status: 422
    end
  end

  def show
    show = Show.find_by(id: params[:id])
    if show
      render json: show
    else
      render json: { error: 'Show not found' }, status: 404
    end
  end

  def update
    # byebug
    show = Show.find_by(id: params[:id])
    show.wifi_network = params[:wifi_network]
    show.wifi_password = params[:wifi_password]
    if show.update(show_params)
      render json: show
    else
      render json: { error: 'Show not found' }, status: 404
    end
  end

  def destroy
    show = show.find_by(id: params[:id])
    if show.destroy
      head :no_content # Returns a response that has no content (merely headers)
    else
      render json: { error: 'Show not found' }, status: 404
    end
  end

  private

  def show_params
    params.require(:show).permit(:id, :venue, :date, :loadin, :guarantee, :merch, :green_room, :user_id, :promoter_id,
                                 :wifi_network, :wifi_password, promoter_attributes: %i[name email slug])
  end
end
