class PlayersProfile < ActiveRecord::Base
  attr_accessible :age_category, :date_of_birth, :name
end
