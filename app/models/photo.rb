class Photo < ActiveRecord::Base
  attr_accessible :caption
  attr_accessible :image
  
  has_attached_file :image
  
end
