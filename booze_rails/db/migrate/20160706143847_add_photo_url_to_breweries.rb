class AddPhotoUrlToBreweries < ActiveRecord::Migration
  def change
    add_column :breweries, :photo_url, :string
  end
end
