class Api::StickersController < ApplicationController
  before_filter :find_sticker, only: [:show, :update]

  def index
    @stickers = Sticker.all
  end

  def create
    @sticker = Sticker.new sticker_params
    if @sticker.save
      render :show
    else
      render :show, status: :unprocessable_entity
    end
  end

  def update
    if @sticker.update_attributes sticker_params
      render :show
    else
      render :show, status: :unprocessable_entity
    end
  end

  private

  def find_sticker
    @sticker = Sticker.find(params[:id])
  end

  def sticker_params
    params.permit(:habit_name)
  end
end
