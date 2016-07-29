require 'historical_records'

class PricesController < ApplicationController

  # GET /quotes/AAPL
  def history
    @history = HistoricalRecords.find_history_for(params[:symbol])

    render json: @history
  end

end
