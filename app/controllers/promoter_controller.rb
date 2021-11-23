class PromoterController < ApplicationController
  def create
    promoter = Promoter.new(promoter_params)
    if promoter.save
      render json: promoter
    else
      render json: { error: promoter.errors.messages }, status: 422
    end
  end

  def update
    promoter = Promoter.find_by(params[:slug])
    if promoter.update(promoter_params)
      render json: promoter
    else
      render json: { error: promoter.errors.messages }, status: 422
    end
  end

  def destroy
    promoter = Promoter.find_by(params[:slug])
    if promoter.destroy
      head :no_content # Returns a response that has no content (merely headers). The options argument is interpreted to be a hash of header names and values.
    else
      render json: { error: promoter.errors.messages }, status: 422
    end
  end

  private

  def promoter_params
    params.require(:promoter).permit(:name, :email)
  end
end
