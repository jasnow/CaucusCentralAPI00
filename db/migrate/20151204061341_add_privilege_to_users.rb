class AddPrivilegeToUsers < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :privilege, :integer, default: 0, null: false
  end
end
