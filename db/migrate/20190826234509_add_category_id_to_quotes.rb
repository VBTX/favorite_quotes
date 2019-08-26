class AddCategoryIdToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :category_id, :integer
  end
end
