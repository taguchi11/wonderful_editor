class Article < ApplicationRecord
  has_many   :comments, dependent: :destroy
  belongs_to :user, dependent: :destroy
  validates :titile, presence: true
  validates :body, presence: true
end
