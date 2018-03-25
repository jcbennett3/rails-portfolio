class Blog < ApplicationRecord
  belongs_to :topic

  enum post_status: { draft: 0, published: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, presence: true, length: { maximum: 100 }
  validates :body, presence: true, length: { maximum: 300 }
end
