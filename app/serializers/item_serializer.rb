class ItemSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :updated_at, :description
end
