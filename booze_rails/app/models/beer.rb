class Beer < ActiveRecord::Base
  belongs_to :brewery, :polymorphic => true
  validates :brewery, presence: true
  validates :name, presence: true
end
