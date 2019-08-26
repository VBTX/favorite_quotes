class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :user
  has_many :quotes
end
