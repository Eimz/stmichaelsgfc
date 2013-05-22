class PlayersProfile < ActiveRecord::Base
  attr_accessible :age_category, :date_of_birth, :name
  attr_accessible :pic
  
  has_attached_file :pic
end
