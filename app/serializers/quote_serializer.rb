class QuoteSerializer < ActiveModel::Serializer
  attributes :id, :author, :source, :text, :note_id
end
