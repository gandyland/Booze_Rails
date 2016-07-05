class Beer < ActiveRecord::Base
  belongs_to :brewery
  belongs_to :restaurant
end
