class Article < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  validates :title, presence: true, length: { maximum: 50 }
  validates :body, presence: true, length: { maximum: 500 }
end
