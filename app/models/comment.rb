class Comment < ApplicationRecord
  belongs_to :article
  belongs_to :user
  validates :body, length: { maximum: 166 }
  validates :comment, presence: true
end
