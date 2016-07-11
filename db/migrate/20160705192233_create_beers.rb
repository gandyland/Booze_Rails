class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.references :brewery
      # t.references :restaurant NHO: think you want to add a foreign key for Restaurant as well
      t.string :style

      t.timestamps null: false
    end
  end
end
