class Restaurant < ActiveRecord::Base
  has_many :beers, dependent: :destroy
  validates :name, uniqueness: true, presence: true
end
