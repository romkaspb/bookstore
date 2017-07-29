class Store < ApplicationRecord
  has_many :stocks
  has_many :books, through: :stocks

  def self.find_by_publisher_id(publisher_id)
    Store.joins(:books).where("books.publisher_id=?", publisher_id).distinct
  end
end
