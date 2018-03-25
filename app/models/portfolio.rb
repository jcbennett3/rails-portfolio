class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :subtitle
  validates :title, length: { maximum: 60 }
  validates :subtitle, lenght: { maximum: 60 }
  validates :body, length: { maximum: 500 }
  mount_uploader :thumb_image, PortfolioUploader
  mount_uploader :main_image, PortfolioUploader
end
