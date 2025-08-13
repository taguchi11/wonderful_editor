class RemoveColumnsFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :uid, :string
    remove_column :users, :encrypted_password, :string
    remove_column :users, :reset_password_token, :string
  end
end
