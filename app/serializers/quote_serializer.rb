class QuoteSerializer < ActiveModel::Serializer
  attributes :id, :author, :source, :text, :category_id
  has_many :notes
end
