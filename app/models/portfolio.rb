class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :subtitle
  validates :title, length: { maximum: 60 }
  validates :subtitle, length: { maximum: 60 }
  validates :body, length: { maximum: 500 }
  mount_uploader :thumb_image, PortfolioUploader
  mount_uploader :main_image, PortfolioUploader

  scope :ruby_on_rails, -> { where(title: "Ruby on Rails") }
  scope :angular, -> { where(title: "Angular" ) }
end
