class Restaurant < ActiveRecord::Base
  has_many :beers, :as => :booze
  validates :name, presence: true
end
