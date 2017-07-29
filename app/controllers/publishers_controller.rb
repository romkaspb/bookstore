class PublishersController < ApplicationController
  include Rest

  private
  def set_instance
    @instance   = Publisher.find(params[:id])
  end

  def set_collection
    @collection = Publisher.all
  end
end
