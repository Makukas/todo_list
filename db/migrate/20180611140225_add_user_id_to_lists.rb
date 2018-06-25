class AddUserIdToLists < ActiveRecord::Migration[5.1]
  def change
    add_column :lists, :userID, :integer
  end
end
