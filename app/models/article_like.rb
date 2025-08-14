class ArticleLike < ApplicationRecord
  validates :user_id, uniqueness: true
end
