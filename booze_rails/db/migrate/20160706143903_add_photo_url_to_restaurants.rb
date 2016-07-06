class AddPhotoUrlToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :photo_url, :integer
  end
end
