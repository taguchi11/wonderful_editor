class AddArticleIdToArticleLikes < ActiveRecord::Migration[6.1]
  def change
    add_column :article_likes, :article_id, :string
  end
end
