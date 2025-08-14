class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates :body, length: { maximum: 166 }
  validates :comment, presence: true
end
