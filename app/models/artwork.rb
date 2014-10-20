class Artwork < ActiveRecord::Base
  belongs_to :Status
  belongs_to :Gallery
  belongs_to :Technique
  has_many :Contacts
	
  mount_uploader :image, ImageUploader
end
