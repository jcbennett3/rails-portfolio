class Topic < ApplicationRecord
  validates :title, presence: true, length: { maximum: 80 }
  has_many :blogs
end
