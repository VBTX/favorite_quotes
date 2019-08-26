class DropCategoriesQuotesTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :categories_quotes
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
