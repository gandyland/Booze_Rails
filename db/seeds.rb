# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require_relative './beer_data.rb'
require_relative './brewery_data.rb'
require_relative './restaurant_data.rb'

Beer.destroy_all
Brewery.destroy_all
Restaurant.destroy_all

# NHO: these seeds do not appear to work for me on local setup...
# Maybe consider simplifing your seeds

beer_data = get_beer_data()
brewery_data = get_brewery_data()
restaurant_data = get_restaurant_data()

beer_data.each_pair do |brewery_name, beers|
  info = brewery_data[brewery_name]
  current_brewery = Brewery.create!({
    name:         info[:name],
    neighborhood:    info[:neighborhood],
    beers:  info[:beers]
    })

    beers.each do |beer|
      Beer.create!({
        name:        beer[:name],
        brewery:        beer[:brewery],
        style:  beer[:style]
        })
      end
    end
