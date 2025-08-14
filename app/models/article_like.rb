class ArticleLike < ApplicationRecord
  belongs_to :user
  belongs_to :article
  validates :user_id, uniqueness: true
end
