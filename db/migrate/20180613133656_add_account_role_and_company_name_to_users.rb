class AddAccountRoleAndCompanyNameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :accountRole, :string
    add_column :users, :companyName, :string
  end
end
