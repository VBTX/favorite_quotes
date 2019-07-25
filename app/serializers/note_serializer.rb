class NoteSerializer < ActiveModel::Serializer
  attributes :id, :text, :quote_id
end
