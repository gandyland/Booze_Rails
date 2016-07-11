class Brewery < ActiveRecord::Base
  # NHO: might consider adding a `dependent: :destroy` option on this relationship to prevent orphaned beers
  has_many :beers
  validates :name, presence: true # NHO: validations, nice!
end
