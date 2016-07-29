require 'csv'

class ExchangeFileImporter

  def self.import(file_path:, exchange_name: )
    raise "invalid file path" unless File.file?(file_path)
    new(raw_csv: File.read(file_path), exchange_name: exchange_name).process
  end

  def initialize(exchange_name:, raw_csv:)
    @raw_csv = raw_csv
    @exchange_name = exchange_name
  end

  def process
    ActiveRecord::Base.transaction do
      CSV.parse(@raw_csv, headers: true) do |row|
        import_stock_details(row)
      end
    end
  end

  private

  def import_stock_details(csv_line)
    puts "Creating stock record for - Exchange: #{@exchange_name}, Symbol: #{csv_line["Symbol"]}"

    ::Stock.create!(
      symbol:         csv_line["Symbol"],
      name:           csv_line["Name"],
      last_sale:      csv_line["LastSale"],
      market_cap:     csv_line["MarketCap"],
      ipo_year:       csv_line["IPOyear"],
      sector:         csv_line["Sector"],
      industry:       csv_line["industry"],
      summary_quote:  csv_line["Summary Quote"],
      exchange:       @exchange_name,
    )
  end
end