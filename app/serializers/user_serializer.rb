class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :username, :weights, :preferences, :token
end
