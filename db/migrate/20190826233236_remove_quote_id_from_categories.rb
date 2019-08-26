class RemoveQuoteIdFromCategories < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :quote_id, :integer
  end
end
