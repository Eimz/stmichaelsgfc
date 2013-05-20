class Newsletter < ActiveRecord::Base
  attr_accessible :content, :date, :string, :title
end
