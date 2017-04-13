class Api::V1::ItemsController < ApplicationController
  def index
    render json: Item.all
  end

  def show
    render json: Item.find_by(params[:id])
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :image_url)
  end
end