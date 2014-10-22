class Artwork < ActiveRecord::Base
  belongs_to :Collection
  belongs_to :Technique
  belongs_to :Material

  mount_uploader :image, ImageUploader
end
