class AddCompletionStatusToLists < ActiveRecord::Migration[5.1]
  def change
    add_column :lists, :completion_status, :string
  end
end
