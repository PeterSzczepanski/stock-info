class CreateStocks < ActiveRecord::Migration[5.0]
  def change
    create_table :stocks do |t|
      # Per spec, no immediate need for index but is a good idea.
      t.string :symbol, null: false, index:true

      t.string :name, null: false
      t.decimal :last_sale
      t.string :market_cap
      t.string :ipo_year
      t.string :sector
      t.string :industry
      t.string :summary_quote
      t.string :exchange

      t.timestamps
    end
  end
end
