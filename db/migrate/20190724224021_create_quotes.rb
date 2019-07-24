class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :author_first
      t.string :author_last
      t.string :source
      t.string :text

      t.timestamps
    end
  end
end
