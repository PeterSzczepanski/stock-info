class Stock < ApplicationRecord
  validates :symbol, uniqueness: {scope: :exchange}, presence: true
  validates :name, presence: true

  def self.with_name_like(prefix)
    where("lower(name) LIKE ?", "#{prefix.downcase}%")
  end
end
