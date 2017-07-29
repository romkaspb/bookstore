class Book < ApplicationRecord
  belongs_to :publisher
  has_many :stocks
  has_many :stores, through: :stocks

  def sold_out_in?(store)
    stocks.where(amount: 0, store: store).exists?
  end
end
