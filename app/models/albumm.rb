class Albumm < ActiveRecord::Base
  attr_accessible :descripton, :name
  
  has_many :photos
  belongs_to :user
end
