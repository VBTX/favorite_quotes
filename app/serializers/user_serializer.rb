class UserSerializer < ActiveModel::Serializer
  attributes :name, :email, :id
  has_many :quotes
  has_many :notes, through: :quotes
end
