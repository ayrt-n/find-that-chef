# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

brooke = Chef.create(first_name: 'Brooke', last_name: 'Williamson')
brooke.restaurants.create(name: 'Playa Provisions')
brooke.restaurants.create(name: 'Da Kikokiko')
brooke.restaurants.create(name: 'The Tripel')
brooke.restaurants.create(name: 'Hudson House')

bryan = Chef.create(first_name: 'Bryan', last_name: 'Voltaggio')
bryan.restaurants.create(name: 'Aggio')

michael = Chef.create(first_name: 'Michael', last_name: 'Voltaggio')
michael.restaurants.create(name: 'Ink')

richard = Chef.create(first_name: 'Richard', last_name: 'Blaise')
richard.restaurants.create(name: 'FLIP')

top_chef = Show.create(name: 'Top Chef')
top_chef.appearances.create(season: 6, chef: michael)
top_chef.appearances.create(season: 10, chef: brooke)
top_chef.appearances.create(season: 14, chef: brooke)
top_chef.appearances.create(season: 6, chef: bryan)
top_chef.appearances.create(season: 4, chef: richard)
top_chef.appearances.create(season: 8, chef: richard)
