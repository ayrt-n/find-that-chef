# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

top_chef = Show.create(name: 'Top Chef')

top_chef_contestants = {
  "San Francisco" => [
    "Stephen Asprinio", "Andrea Beaman", "Harold Dieterle", "Tiffani Faison", "Brian Hill",
    "Candice Kumai", "Ken Lee", "Dave Martin", "Miguel Morales", "Lisa Parks", "Cynthia Sestito",
    "Lee Anne Wong"
  ],
  "Los Angeles" => [
    "Elia Aboumrad", "Otto Borsich", "Marisa Churchill", "Cliff Crooks", "Carlos Fernandez",
    "Betty Fraser", "Mia Gaines-Alt", "Ilan Hall", "Michael Midgley", "Josie Smith-Malave",
    "Emily Sprissler", "Suyai Steinhauer", "Sam Talbot", "Frank Terzoli", "Marcel Vigneron"
  ],
  "Miami" => [
    "Lia Bardeen", "Camille Becerra", "Sandee Birdsong", "Clay Bowen", "Micah Edelstein",
    "Hung Huynh", "Chris Jacobsen", "Howie Kleinberg", "Dale Levitski", "Sara Mair",
    "Brian Malarkey", "Sara Nguyen", "Joey Paulino", "Casey Thompson", "Tre Wilcox"
  ],
  "Chicago" => [
    "Zoi Antonitsas", "Jennifer Biesty", "Richard Blais", "Valerie Bolon", "Nikki Cascone",
    "Andrew D'Ambrosi", "Lisa Fernandes", "Erik Hopfinger", "Stephanie Izard", "Antonia Lofaso",
    "Spike Mendelsohn", "Nimma Osman", "Ryan Scott", "Mark Simmons", "Dale Talde", "Manuel Trevino"
  ],
  "New York" => [
    "Leah Cohen", "Radhika Desai", "Ariane Duarte", "Patrick Dunlea", "Alex Eusebio",
    "Danny Gagnon", "Carla Hall", "Melissa Harrison", "Lauren Hope", "Jamie Lauren",
    "Jeff McInnis", "Stefan Richter", "Hosea Rosenberg", "Jill Snyder", "Richard Sweeney",
    "Eugene Villiatora", "Fabio Viviani"
  ],
  "Las Vegas" => [
    "Eve Aronoff", "Jennifer Carroll", "Ron Duprat", "Ash Fulk", "Kevin Gillespie",
    "Laurine Hope", "Mike Isabella", "Eli Kirshtein", "Robin Leventhal", "Ashley Merriman",
    "Preeti Mistry", "Mattin Noblia", "Jesse Sandlin", "Hector Santiago", "Bryan Voltaggio",
    "Michael Voltaggio", "Jennifer Zavala"
  ],
  "D.C." => [
    "Amanda Baumgarten", "Tracey Bloom", "Ed Cotton", "Andrea Curto-Randazzo", "Timothy Dean",
    "Tiffany Derry", "Lynne Gigliotti", "Kenny Gilbert", "Stephen Hopcraft", "Kelly Liken",
    "Jacqueline Lombard", "Arnold Myint", "Alex Reznik", "Kevin Sbraga", "John Somerville",
    "Angelo Sosa", "Tamesha Warren"
  ],
  "All-Stars" => [
    "Elia Aboumrad", "Stephen Asprinio", "Richard Blais", "Jennifer Carroll", "Tiffany Derry",
    "Tiffani Faison", "Carla Hall", "Mike Isabella", "Jamie Lauren", "Dale Levitski",
    "Antonia Lofaso", "Spike Mendelsohn", "Angelo Sosa", "Dale Talde", "Casey Thompson",
    "Marcel Vigneron", "Fabio Viviani", "Tre Wilcox"
  ],
  "Texas" => [
    "Nyesha Arrington", "Lindsay Autry", "Jonathan Baltazar", "Ty-Lör Boring", "Molly Brandt",
    "Chaz Brown", "Kimberly Calichio", "Chris Crary", "Andrew Curren", "Berenice DeAraujo",
    "Janine Falvo", "Richie Farina", "Sarah Grueneberg", "Chris Jones", "Beverly Kim", "Edward Lee",
    "Whitney Otawka", "Simon Pantet", "Colin Patterson", "Laurent Quenioux", "Paul Qui", "Keith Rhodes",
    "Grayson Schmitz", "Tyler Stone", "Heather Terhune", "Tyson Wong"
  ],
  "Seattle" => [
    "Lizzie Binder", "Brooke Williamson", "Chrissy Camba", "Josie Smith-Malave", "Micah Fields",
    "John Tesar", "Sheldon Simeon", "Joshua Valentine", "Stefan Richter", "Kristen Kish",
    "Danyele McPherson", "Eliza Gavin", "Carla Pellegrino", "Bart Vandaele", "Tyler Wiard"
  ],
  "New Orleans" => [
    "Stephanie Cmar", "Jason Cichonski", "Janine Booth", "Justin Devillier", "Carlos Gaytán",
    "Brian Huskey", "Carrie Mashaney", "Nicholas Elmi", "Louis Maldonado", "Bene Bartolotta",
    "Travis Masar", "Shirley Chung", "Nina Compton", "Sara Johannes", "Aaron Cuschieri",
    "Michael Sichel", "Bret Pelaggi"
  ],
  "Boston" => [
    "Mei Lin", "Gregory Gourdet", "Doug Adams", "Melissa King", "George Pagonis",
    "Adam Harvey", "Katsuji Tanabe", "Rebecca LaMalfa", "Joy Crump", "Keriann von Raesfeld",
    "Katie Weinner", "Ron Eyester", "James Rigato", "Katie Weinner", "Aaron Grissom"
  ],
  "California" => [
    "Garret Fleming", "Renee Kelly", "Frances Tariga-Weshnak", "Grayson Schmitz", "Giselle Wellman",
    "Angelina Bastidas", "Wesley True", "Jason Stratton", "Chad White", "Phillip Frankland Lee",
    "Karen Akunowicz", "Kwame Onwuachi", "Carl Dooley", "Isaac Toups", "Marjorie Meek-Bradley", "Amar Santana",
    "Jeremy Ford"
  ],
  "Charleston" => [
    "Gerald Sombright", "Annie Pettry", "Sam Talbot", "BJ Smith", "Silvia Barban", "Amanda Baumgarten",
    "Jim Smith", "Jamie Lynch", "Katsuji Tanabe", "Emily Hahn", "Casey Thompson", "Sylva Senat",
    "John Tesar", "Sheldon Simeon", "Shirley Chung", "Brooke Williamson"
  ],
  "Colorado" => [
    "Jennifer Carroll", "Marcel Vigneron", "Kwame Onwuachi", "Melissa Perfit", "Laura Cole", "Rogelio Garcia",
    "Tyler Anderson", "Tu David Phu", "Lee Anne Wong", "Brother Luck", "Tonya Holland", "Claudette Zepeda-Wilkins",
    "Fatima Ali", "Bruce Kalman", "Christopher Scott", "Carrie Baird", "Joe Sasto", "Adrienne Cheatham",
    "Joseph Flamm"
  ],
  "Kentucky" => [
    "Jim Smith", "Carrie Baird", "Caitlin Steininger", "Natalie Maronski", "Kevin Scharpf", "Pablo Lamon", "Nini Nguyen",
    "Brother Luck", "Brandon Rosen", "Brian Young", "David Viana", "Edmund Konrad", "Justin Sutherland",
    "Adrienne Wright", "Michelle Minori", "Eric Adjepong", "Sara Bradley", "Kelsey Barnard Clark"
  ],
  "All-Stars L.A." => [
    "Joe Sasto", "Angelo Sosa", "Jamie Lynch", "Lisa Fernandes", "Jennifer Carroll", "Nini Nguyen", "Eric Adjepong",
    "Lee Anne Wong", "Karen Akunowicz", "Brian Malarkey", "Gregory Gourdet", "Kevin Gillespie", "Stephanie Cmar",
    "Bryan Voltaggio", "Melissa King"
  ],
  "Portland" => [
    "Roscoe Hall", "Sasha Grumman", "Brittanny Anderson", "Kiki Louya", "Nelson German", "Gabriel Pascuzzi",
    "Avishar Barua", "Sara Hauman", "Chris Viaud", "Byron Gomez", "Maria Mazon", "Jamie Tran", "Dawn Burrell",
    "Shota Nakajima", "Gabe Erales"
  ],
  "Houston" => [
    "Leia Gaccione", "Stephanie Miller", "Sam Kang", "Robert Hernandez", "Monique Feybesse", "Jo Chan", "Jackson Kalb",
    "Luke Kolpin", "Jae Jung", "Ashleigh Shanti", "Nick Wallace", "Damarr Brown", "Sarah Welch", "Evelyn Garcia", "Buddha Lo"
  ]
}

snum = 1
top_chef_contestants.each do |season_name, contestants|
  season = top_chef.seasons.create(number: snum, name: season_name)
  snum += 1

  contestants.each do |contestant|
    fname, lname = contestant.split
    chef = Chef.find_or_create_by(first_name: fname, last_name: lname)
    top_chef.appearances.create(season:, chef:)
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