class QuoteSerializer < ActiveModel::Serializer
  attributes :id, :author_first, :author_last, :source, :text
end
