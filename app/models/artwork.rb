class Artwork < ActiveRecord::Base
  belongs_to :Status
  belongs_to :Gallery
  belongs_to :Technique

  mount_uploader :image, ImageUploader
end
