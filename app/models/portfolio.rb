class Portfolio < ApplicationRecord
  include Placeholder

  validates_presence_of :title, :body, :subtitle
  validates :title, length: { maximum: 60 }
  validates :subtitle, length: { maximum: 60 }
  validates :body, length: { maximum: 500 }
  mount_uploader :thumb_image, PortfolioUploader
  mount_uploader :main_image, PortfolioUploader

  scope :ruby_on_rails, -> { where(title: "Ruby on Rails") }
  scope :angular, -> { where(title: "Angular" ) }

  after_initialize :set_defaults

  private
    def set_defaults
      self.main_image ||= Placholder.image_generator(height: '600', width: '400')
      self.thumb_image ||= Placeholder.image_generator(height: '300', width: '250')
    end
end

# Concerns should always be data related.
