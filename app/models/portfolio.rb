class Portfolio < ApplicationRecord 
    mount_uploader :thumb_image, PortfolioUploader 
    mount_uploader :main_image, PortfolioUploader
end
