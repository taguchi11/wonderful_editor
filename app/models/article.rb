class Article < ApplicationRecord
  has_many   :comments, dependent: :destroy
  belongs_to :user, dependent: :destroy
  validates :title, presence: true
  validates :body, presence: true
  validates :title, length: { maximum: 20 }
  validates :body, length: { maximum: 166 }
end
