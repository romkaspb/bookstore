module Rest
  extend ActiveSupport::Concern

  included do
    before_action :set_instance, only: [:show]
    before_action :set_collection, only: [:index]
  end

  def show
    instance_variable_set(:"@#{instance_name}", @instance)
  end
  
  def index
    instance_variable_set(:"@#{collection_name}", @collection)
  end

  private
  def resource_name
    @resource_name ||= controller_name
  end
  def instance_name
    resource_name.singularize
  end
  def collection_name
    resource_name.pluralize
  end
end
