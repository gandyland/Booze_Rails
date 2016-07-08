class Beer < ActiveRecord::Base
  belongs_to :brewery
  belongs_to :restaurant
  validates :brewery, presence: true
  validates :name, presence: true
end
