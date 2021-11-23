class ShowsController < ApplicationController
  def index
    shows = Show.all
    render json: shows
  end

  def create
    # byebug
    show = Show.new(show_params)
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
    show = Show.find_by(id: params[:id])
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
    params.require(:show).permit(:venue, :date, :loadin, :guarantee, :merch, :green_room, :user_id, :promoter_id,
                                 wifi: %i[wifi_network wifi_password], promoter_attributes: %i[name email slug])
  end
end
