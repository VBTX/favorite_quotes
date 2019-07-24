class RemoveAuthorLastFromQuotes < ActiveRecord::Migration[5.2]
  def change
  	remove_column :quotes, :author_last
  	remove_column :quotes, :author_first
  	add_column :quotes, :author, :string
  end
end
