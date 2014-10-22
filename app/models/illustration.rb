class Illustration < ActiveRecord::Base

  mount_uploader :image, IllustarionImageUploader
end
