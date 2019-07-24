class AddQuoteIdToNotes < ActiveRecord::Migration[5.2]
  def change
    add_column :notes, :quote_id, :integer
  end
end
