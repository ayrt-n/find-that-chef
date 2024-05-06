require 'json'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

top_chef = Show.create(name: 'Top Chef')

f = File.read(Rails.root.join('db', 'top_chef_contestants.json'))
top_chef_contestants = JSON.parse(f)

top_chef_contestants.each do |s|
  season = top_chef.seasons.create(number: s['number'], name: s['name'])
  s['contestants'].each do |contestant|
    chef = Chef.find_or_create_by(first_name: contestant['fname'], last_name: contestant['lname'])
    top_chef.appearances.create(season:, chef:, rank: contestant['rank'])
  end
end

restaurants = {
  'Brooke Williamson': [
    {
      name: 'Playa Provisions',
      rating: 3.9,
      city: 'Los Angeles',
      state: 'CA',
      category: ['New American', 'Seafood']
    },
    {
      name: 'Da Kikokiko',
      rating: 3.3,
      city: 'Playa Vista',
      state: 'CA',
      category: ['Hawaiian']
    },
    {
      name: 'The Tripel',
      rating: 4.1,
      city: 'Playa Vista',
      state: 'CA',
      category: ['Gastropub']
    },
    {
      name: 'Hudson House',
      rating: 4.3,
      city: 'Dallas',
      state: 'TX',
      category: ['American', 'Seafood']
    }
  ],
  'Bryan Voltaggio': [
    {
      name: 'Herb & Wood',
      rating: 4.1,
      city: 'San Diego',
      state: 'CA',
      category: ['New American', 'Seafood', 'Mediterranean']
    }
  ],
  'Brian Malarkey': [
    {
      name: 'Animae',
      rating: 4.4,
      city: 'San Diego',
      state: 'CA',
      category: ['Asian Fusion', 'Cocktail Bar']
    }
  ]
}

restaurants.each do |chef_name, rest_array|
  fname, lname = chef_name.to_s.split
  chef = Chef.find_by(first_name: fname, last_name: lname)

  rest_array.each do |restaurant|
    chef.restaurants.create(restaurant)
  end
end