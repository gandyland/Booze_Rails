class AddBoozeToBeers < ActiveRecord::Migration
  def change
    add_reference :beers, :booze, polymorphic: true, index: true
  end
end
