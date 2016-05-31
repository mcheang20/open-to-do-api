class ListSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :updated_at, :name, :permissions
end
