class Photo < ActiveRecord::Base
  attr_accessible :albumm_id, :description, :image, :name
  belongs_to :albumm
  mount_uploader :image, ImageUploader
end
