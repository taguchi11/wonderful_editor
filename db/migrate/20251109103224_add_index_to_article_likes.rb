class AddIndexToArticleLikes < ActiveRecord::Migration[6.1]
  def change
    add_index :article_likes, :user_id, unique: true
  end
end
