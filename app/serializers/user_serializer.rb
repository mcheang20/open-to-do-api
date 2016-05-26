class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :created_at, :updated_at

  def created_at
   object.created_at.strftime('%B %d, %Y')
 end
end
