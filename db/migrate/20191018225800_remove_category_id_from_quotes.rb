class RemoveCategoryIdFromQuotes < ActiveRecord::Migration[5.2]
  def change
    remove_column :quotes, :category_id, :integer
  end
end
