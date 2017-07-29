class StoresController < ApplicationController
  include Rest
  before_action :set_instance, on: [:sell_out]
  def sell_out
    book_ids = params[:book_ids]
    MarkAsSoldOutJob.perform_later(@instance, book_ids)

    head :no_content
  end

  private
  def set_instance
    @instance   = Store.find(params[:id])
  end

  def set_collection
    @collection = Store.all

    if params[:publisher_id]
      @collection = Store.find_by_publisher_id(params[:publisher_id])
    end
  end
end
