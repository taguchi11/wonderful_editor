class Comment < ApplicationRecord
  belongs_to :article
  belongs_to :user
  validates :body, presence: true, length: { maximum: 100 }
  validates :user_id, uniqueness: true
end
