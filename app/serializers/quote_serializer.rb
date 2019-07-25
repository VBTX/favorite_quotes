class QuoteSerializer < ActiveModel::Serializer
  attributes :id, :author, :source, :text
  has_many :notes
end
