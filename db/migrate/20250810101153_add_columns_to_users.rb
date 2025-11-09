class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    change_table :users, bulk: true do |t|
      t.string :provider
      t.string :reset_password_token
    end
  end
end
