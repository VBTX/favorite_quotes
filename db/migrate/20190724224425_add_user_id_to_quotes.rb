class AddUserIdToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :user_id, :integer
  end
end
