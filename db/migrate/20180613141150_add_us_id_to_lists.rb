class AddUsIdToLists < ActiveRecord::Migration[5.1]
  def change
    add_column :lists, :userID1, :integer
  end
end
