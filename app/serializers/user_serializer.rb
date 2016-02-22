class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :photo, :uid
end
