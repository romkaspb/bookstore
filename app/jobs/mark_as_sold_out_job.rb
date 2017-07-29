class MarkAsSoldOutJob < ApplicationJob
  queue_as :default

  def perform(store, book_ids)
    Stock.where(store: store, book_id: book_ids).update_all(amount: 0)
  end
end
