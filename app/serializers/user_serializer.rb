class UserSerializer < ActiveModel::Serializer
  has_many :sugar_records

  attributes :id, :username
end
