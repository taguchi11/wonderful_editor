class RemoveColumnsFromUsers < ActiveRecord::Migration[6.1]
  def change
    change_table :users, bulk: true do |t|
      t.string :users, :encrypted_password
      t.string :users, :encrypted_password
      t.string :users, :reset_password_token
    end
  end
end
