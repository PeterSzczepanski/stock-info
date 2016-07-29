class AddLowercaseIndexToStocks < ActiveRecord::Migration[5.0]
  def up
    execute %{ CREATE INDEX
            stocks_lower_name
          ON
            stocks (lower(name) varchar_pattern_ops)
        }
  end

  def down
    remove_index :stocks, name: 'stocks_lower_name'
  end
end
