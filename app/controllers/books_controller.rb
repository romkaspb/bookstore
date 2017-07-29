class BooksController < ApplicationController
  include Rest

  private
  def set_instance
    @instance = Book.find(params[:id])
  end

  def set_collection
    @collection = Book.includes(:publisher)
  end
end
