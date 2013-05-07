class Booking < ActiveRecord::Base
  attr_accessible :date, :email, :name, :phone, :reason, :text
end
