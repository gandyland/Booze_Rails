class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.string :brewery
      t.string :style
      t.integer :abv

      t.references :booze, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
