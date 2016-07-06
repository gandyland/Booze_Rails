class RemoveAbvFromBeers < ActiveRecord::Migration
  def change
    remove_column :beers, :abv, :integer
  end
end
