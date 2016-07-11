class Beer < ActiveRecord::Base
  # NHO: one thing to consider in the future is the design choice about this relationship
  # As you currently have it, a beer that belongs to a brewery, has in essence no knowledge of any beer associated to a restuarant
  # This is totally and completely acceptable, it just means you might end up with duplicates...

  # One way you could avoid duplication is by setting up polymorphic relationships between Beer, Restaurant, and Brewery
  # though that would require a big application rearchitecture
  belongs_to :brewery
  belongs_to :restaurant
  validates :brewery, presence: true # NHO: this might be hard to validate if a beer is also associated to a Restaurant
  validates :name, presence: true
end
