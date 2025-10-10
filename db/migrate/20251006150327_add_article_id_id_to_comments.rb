class AddArticleIdIdToComments < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :article_id, :string
  end
end
