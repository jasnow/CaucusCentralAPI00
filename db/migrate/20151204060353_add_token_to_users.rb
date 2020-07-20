class AddTokenToUsers < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :auth_token, :string, null: false
  end
end
