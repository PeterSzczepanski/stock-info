class StocksController < ApplicationController
  before_action :set_stock, only: [:show, :history]

  # GET /stocks
  def index
    @stocks = params[:name] ? Stock.with_name_like(params[:name]) : Stock.all

    render json: @stocks
  end

  # GET /stocks/APPL
  def show
    render json: @stock
  end

  # # GET /stocks/search?name=td
  # def search
  #   @stocks = Stock.with_name_like(params[:name])

  #   render json: @stocks
  # end

  private

  def set_stock
    @stock = Stock.find_by_symbol(params[:symbol])
  end

  def stock_params
    params.require(:stock).permit(:symbol, :name)
  end
end
