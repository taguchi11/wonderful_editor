class AddUserIdToArticleLikes < ActiveRecord::Migration[6.1]
  def change
    add_column :article_likes, :user_id, :string
  end
end
