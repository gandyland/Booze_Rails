class CreateBreweries < ActiveRecord::Migration
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :neighborhood
      t.string :beer

      t.timestamps null: false
    end
  end
end
