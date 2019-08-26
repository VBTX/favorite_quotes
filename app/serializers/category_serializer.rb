class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :user
  has_one :quote
end
