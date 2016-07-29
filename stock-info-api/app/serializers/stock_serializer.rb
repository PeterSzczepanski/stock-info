class StockSerializer < ActiveModel::Serializer
  attributes :id, :exchange, :symbol, :name
end
