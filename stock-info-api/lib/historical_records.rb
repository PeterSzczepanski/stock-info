require 'yahoo_finance'

class HistoricalRecords

  MAX_DAY_PAST_RECORDS = 30

  def self.find_history_for(symbol)

    # Future:
    # * Rate limit
    # * Cache results to Redis with short TTL
    # * Configure for multiple data sources

    quotes = YahooFinance.historical_quotes(
      symbol,
      start_date: Date.current - MAX_DAY_PAST_RECORDS.days,
      end_date: Date.current,
    )

    quotes.map do |quote|
      {
        "date"    => quote.trade_date,
        "low"     => quote.low,
        "high"    => quote.high,
        "open"    => quote.open,
        "close"   => quote.close,
        "average" => ( quote.low.to_f + quote.high.to_f + quote.open.to_f + quote.close.to_f ) / 4,
      }
    end
  end

end