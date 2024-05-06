require 'json'

top_chef_contestants = {
  "San Francisco": [
    "Stephen Asprinio", "Andrea Beaman", "Harold Dieterle", "Tiffani Faison", "Brian Hill",
    "Candice Kumai", "Ken Lee", "Dave Martin", "Miguel Morales", "Lisa Parks", "Cynthia Sestito",
    "Lee Anne Wong"
  ],
  "Los Angeles": [
    "Elia Aboumrad", "Otto Borsich", "Marisa Churchill", "Cliff Crooks", "Carlos Fernandez",
    "Betty Fraser", "Mia Gaines-Alt", "Ilan Hall", "Michael Midgley", "Josie Smith-Malave",
    "Emily Sprissler", "Suyai Steinhauer", "Sam Talbot", "Frank Terzoli", "Marcel Vigneron"
  ],
  "Miami": [
    "Lia Bardeen", "Camille Becerra", "Sandee Birdsong", "Clay Bowen", "Micah Edelstein",
    "Hung Huynh", "Chris Jacobsen", "Howie Kleinberg", "Dale Levitski", "Sara Mair",
    "Brian Malarkey", "Sara Nguyen", "Joey Paulino", "Casey Thompson", "Tre Wilcox"
  ],
  "Chicago": [
    "Zoi Antonitsas", "Jennifer Biesty", "Richard Blais", "Valerie Bolon", "Nikki Cascone",
    "Andrew D'Ambrosi", "Lisa Fernandes", "Erik Hopfinger", "Stephanie Izard", "Antonia Lofaso",
    "Spike Mendelsohn", "Nimma Osman", "Ryan Scott", "Mark Simmons", "Dale Talde", "Manuel Trevino"
  ],
  "New York": [
    "Leah Cohen", "Radhika Desai", "Ariane Duarte", "Patrick Dunlea", "Alex Eusebio",
    "Danny Gagnon", "Carla Hall", "Melissa Harrison", "Lauren Hope", "Jamie Lauren",
    "Jeff McInnis", "Stefan Richter", "Hosea Rosenberg", "Jill Snyder", "Richard Sweeney",
    "Eugene Villiatora", "Fabio Viviani"
  ],
  "Las Vegas": [
    "Eve Aronoff", "Jennifer Carroll", "Ron Duprat", "Ash Fulk", "Kevin Gillespie",
    "Laurine Hope", "Mike Isabella", "Eli Kirshtein", "Robin Leventhal", "Ashley Merriman",
    "Preeti Mistry", "Mattin Noblia", "Jesse Sandlin", "Hector Santiago", "Bryan Voltaggio",
    "Michael Voltaggio", "Jennifer Zavala"
  ],
  "D.C.": [
    "Amanda Baumgarten", "Tracey Bloom", "Ed Cotton", "Andrea Curto-Randazzo", "Timothy Dean",
    "Tiffany Derry", "Lynne Gigliotti", "Kenny Gilbert", "Stephen Hopcraft", "Kelly Liken",
    "Jacqueline Lombard", "Arnold Myint", "Alex Reznik", "Kevin Sbraga", "John Somerville",
    "Angelo Sosa", "Tamesha Warren"
  ],
  "All-Stars": [
    "Elia Aboumrad", "Stephen Asprinio", "Richard Blais", "Jennifer Carroll", "Tiffany Derry",
    "Tiffani Faison", "Carla Hall", "Mike Isabella", "Jamie Lauren", "Dale Levitski",
    "Antonia Lofaso", "Spike Mendelsohn", "Angelo Sosa", "Dale Talde", "Casey Thompson",
    "Marcel Vigneron", "Fabio Viviani", "Tre Wilcox"
  ],
  "Texas": [
    "Nyesha Arrington", "Lindsay Autry", "Jonathan Baltazar", "Ty-Lör Boring", "Molly Brandt",
    "Chaz Brown", "Kimberly Calichio", "Chris Crary", "Andrew Curren", "Berenice DeAraujo",
    "Janine Falvo", "Richie Farina", "Sarah Grueneberg", "Chris Jones", "Beverly Kim", "Edward Lee",
    "Whitney Otawka", "Simon Pantet", "Colin Patterson", "Laurent Quenioux", "Paul Qui", "Keith Rhodes",
    "Grayson Schmitz", "Tyler Stone", "Heather Terhune"
  ],
  "Seattle": [
    "Jeffrey Jew", "Kuniko Yagi", "Chrissy Camba", "Carla Pellegrino", "Tyler Wiard", "Chris Jacobsen", "Eliza Gavin",
    "Danyele McPherson", "Bart Vandaele", "John Tesar", "Micah Fields", "Josie Smith-Malave", "Stefan Richter",
    "Elizabeth Binder", "Joshua Valentine", "Sheldon Simeon", "Brooke Williamson", "Kristen Kish"
  ],
  "New Orleans": [
    "Stephanie Cmar", "Jason Cichonski", "Janine Booth", "Justin Devillier", "Carlos Gaytan",
    "Brian Huskey", "Carrie Mashaney", "Nicholas Elmi", "Louis Maldonado", "Bene Bartolotta",
    "Travis Masar", "Shirley Chung", "Nina Compton", "Sara Johannes", "Aaron Cuschieri",
    "Michael Sichel", "Bret Pelaggi"
  ],
  "Boston": [
    "Mei Lin", "Gregory Gourdet", "Doug Adams", "Melissa King", "George Pagonis",
    "Adam Harvey", "Katsuji Tanabe", "Rebecca LaMalfa", "Joy Crump", "Keriann Von Raesfeld",
    "Katie Weinner", "Ron Eyester", "James Rigato", "Katie Weinner", "Aaron Grissom"
  ],
  "California": [
    "Garret Fleming", "Renee Kelly", "Frances Tariga-Weshnak", "Grayson Schmitz", "Giselle Wellman",
    "Angelina Bastidas", "Wesley True", "Jason Stratton", "Chad White", "Phillip Lee",
    "Karen Akunowicz", "Kwame Onwuachi", "Carl Dooley", "Isaac Toups", "Marjorie Meek-Bradley", "Amar Santana",
    "Jeremy Ford"
  ],
  "Charleston": [
    "Gerald Sombright", "Annie Pettry", "Sam Talbot", "BJ Smith", "Silvia Barban", "Amanda Baumgarten",
    "Jim Smith", "Jamie Lynch", "Katsuji Tanabe", "Emily Hahn", "Casey Thompson", "Sylva Senat",
    "John Tesar", "Sheldon Simeon", "Shirley Chung", "Brooke Williamson"
  ],
  "Colorado": [
    "Melissa Perfit", "Laura Cole", "Rogelio Garcia",
    "Tyler Anderson", "Tu David Phu", "Lee Anne Wong", "Brother Luck", "Claudette Zepeda-Wilkins",
    "Fatima Ali", "Bruce Kalman", "Chris Scott", "Carrie Baird", "Joe Sasto", "Adrienne Cheatham",
    "Joe Flamm"
  ],
  "Kentucky": [
    "Caitlin Steininger", "Natalie Maronski", "Kevin Scharpf", "Pablo Lamon", "Nini Nguyen",
    "Brother Luck", "Brandon Rosen", "Brian Young", "David Viana", "Edmund Konrad", "Justin Sutherland",
    "Adrienne Wright", "Michelle Minori", "Eric Adjepong", "Sara Bradley", "Kelsey Barnard Clark"
  ],
  "All-Stars L.A.": [
    "Joe Sasto", "Angelo Sosa", "Jamie Lynch", "Lisa Fernandes", "Jennifer Carroll", "Nini Nguyen", "Eric Adjepong",
    "Lee Anne Wong", "Karen Akunowicz", "Brian Malarkey", "Gregory Gourdet", "Kevin Gillespie", "Stephanie Cmar",
    "Bryan Voltaggio", "Melissa King"
  ],
  "Portland": [
    "Roscoe Hall", "Sasha Grumman", "Brittanny Anderson", "Kiki Louya", "Nelson German", "Gabriel Pascuzzi",
    "Avishar Barua", "Sara Hauman", "Chris Viaud", "Byron Gomez", "Maria Mazon", "Jamie Tran", "Dawn Burrell",
    "Shota Nakajima", "Gabe Erales"
  ],
  "Houston": [
    "Leia Gaccione", "Stephanie Miller", "Sam Kang", "Robert Hernandez", "Monique Feybesse", "Jo Chan", "Jackson Kalb",
    "Luke Kolpin", "Jae Jung", "Ashleigh Shanti", "Nick Wallace", "Damarr Brown", "Sarah Welch", "Evelyn Garcia", "Buddha Lo"
  ]
}

ranks = {
  "San Francisco": {
    "Ken Lee": 12,
    "Cynthia Sestito": 11,
    "Brian Hill": 10,
    "Candice Kumai": 9,
    "Lisa Parks": 8,
    "Andrea Beaman": 7,
    "Miguel Morales": 6,
    "Stephen Asprinio": 5,
    "Lee Anne Wong": 4,
    "Dave Martin": 3,
    "Tiffani Faison": 2,
    "Harold Dieterle": 1
  },
  "Los Angeles": {
    "Suyai Steinhauer": 15,
    "Otto Borsich": 14,
    "Emily Sprissler": 13,
    "Marisa Churchill": 11,
    "Josie Smith-Malave": 11,
    "Carlos Fernandez": 10,
    "Frank Terzoli": 9,
    "Mia Gaines-Alt": 8,
    "Betty Fraser": 7,
    "Michael Midgley": 6,
    "Cliff Crooks": 5,
    "Sam Talbot": 3,
    "Elia Aboumrad": 3,
    "Marcel Vigneron": 2,
    "Ilan Hall": 1
  },
  "Miami": {
    "Clay Bowen": 15,
    "Sandee Birdsong": 14,
    "Micah Edelstein": 13,
    "Camille Becerra": 12,
    "Lia Bardeen": 11,
    "Joey Paulino": 10,
    "Sara Nguyen": 9,
    "Tre Wilcox": 8,
    "Howie Kleinberg": 7,
    "Chris Jacobsen": 6,
    "Sara Mair": 5,
    "Brian Malarkey": 4,
    "Dale Levitski": 2,
    "Casey Thompson": 2,
    "Hung Huynh": 1
  },
  "Chicago": {
    "Nimma Osman": 16,
    "Valerie Bolon": 15,
    "Erik Hopfinger": 14,
    "Manuel Trevino": 13,
    "Zoi Antonitsas": 12,
    "Ryan Scott": 11,
    "Jennifer Biesty": 10,
    "Mark Simmons": 9,
    "Nikki Cascone": 8,
    "Andrew D'Ambrosi": 7,
    "Dale Talde": 6,
    "Spike Mendelsohn": 5,
    "Antonia Lofaso": 4,
    "Richard Blais": 2,
    "Lisa Fernandes": 2,
    "Stephanie Izard": 1
  },
  "New York": {
    "Lauren Hope": 17,
    "Patrick Dunlea": 16,
    "Jill Snyder": 15,
    "Richard Sweeney": 14,
    "Alex Eusebio": 13,
    "Danny Gagnon": 12,
    "Melissa Harrison": 10,
    "Eugene Villiatora": 10,
    "Ariane Duarte": 9,
    "Radhika Desai": 8,
    "Jamie Lauren": 7,
    "Leah Cohen": 6,
    "Jeff McInnis": 4,
    "Fabio Viviani": 4,
    "Stefan Richter": 2,
    "Carla Hall": 2,
    "Hosea Rosenberg": 1
  },
  "Las Vegas": {
    "Jennifer Zavala": 17,
    "Eve Aronoff": 16,
    "Preeti Mistry": 15,
    "Jesse Sandlin": 14,
    "Hector Santiago": 13,
    "Mattin Noblia": 12,
    "Ron Duprat": 11,
    "Ashley Merriman": 10,
    "Ash Fulk": 9,
    "Laurine Hope": 8,
    "Mike Isabella": 7,
    "Robin Leventhal": 6,
    "Eli Kirshtein": 5,
    "Jennifer Carroll": 4,
    "Kevin Gillespie": 2,
    "Bryan Voltaggio": 2,
    "Michael Voltaggio": 1
  },
  "D.C.": {
    "John Somerville": 17,
    "Jacqueline Lombard": 16,
    "Tracey Bloom": 15,
    "Lynne Gigliotti": 13,
    "Arnold Myint": 13,
    "Timothy Dean": 12,
    "Tamesha Warren": 11,
    "Andrea Curto-Randazzo": 10,
    "Stephen Hopcraft": 9,
    "Kenny Gilbert": 8,
    "Alex Reznik": 7,
    "Amanda Baumgarten": 6,
    "Tiffany Derry": 5,
    "Kelly Liken": 4,
    "Ed Cotton": 2,
    "Angelo Sosa": 2,
    "Kevin Sbraga": 1
  },
  "All-Stars": {
    "Elia Aboumrad": 18,
    "Jennifer Carroll": 17,
    "Stephen Asprinio": 15,
    "Dale Levitski": 15,
    "Spike Mendelsohn": 14,
    "Casey Thompson": 13,
    "Tiffani Faison": 11,
    "Jamie Lauren": 11,
    "Marcel Vigneron": 10,
    "Tre Wilcox": 9,
    "Fabio Viviani": 8,
    "Angelo Sosa": 7,
    "Dale Talde": 6,
    "Carla Hall": 5,
    "Tiffany Derry": 4,
    "Antonia Lofaso": 3,
    "Mike Isabella": 2,
    "Richard Blais": 1
  },
  "Texas": {
    "Tyler Stone": 27,
    "Simon Pantet": 27,
    "Colin Patterson": 27,
    "Nina Vicente": 26,
    "Kimberly Calichio": 21,
    "Jonathan Baltazar": 21,
    "Chaz Brown": 21,
    "Berenice DeAraujo": 21,
    "Ashley Villaluz": 21,
    "Molly Brandt": 17,
    "Laurent Quenioux": 17,
    "Janine Falvo": 17,
    "Andrew Curren": 17,
    "Keith Rhodes": 16,
    "Richie Farina": 15,
    "Chuy Valencia": 14,
    "Whitney Otawka": 13,
    "Nyesha Arrington": 11,
    "Dakota Weiss": 11,
    "Heather Terhune": 10,
    "Chris Crary": 9,
    "Ty-Lör Boring": 8,
    "Chris Jones": 7,
    "Grayson Schmitz": 6,
    "Edward Lee": 5,
    "Beverly Kim": 4,
    "Lindsay Autry": 3,
    "Sarah Grueneberg": 2,
    "Paul Qui": 1
  },
  "Seattle": {
    "Jeffrey Jew": 18,
    "Kuniko Yagi": 17,
    "Chrissy Camba": 16,
    "Carla Pellegrino": 16,
    "Tyler Wiard": 14,
    "Chris Jacobsen": 14,
    "Eliza Gavin": 12,
    "Danyele McPherson": 11,
    "Bart Vandaele": 10,
    "John Tesar": 9,
    "Micah Fields": 8,
    "Josie Smith-Malave": 7,
    "Stefan Richter": 6,
    "Elizabeth Binder": 5,
    "Joshua Valentine": 4,
    "Sheldon Simeon": 3,
    "Brooke Williamson": 2,
    "Kristen Kish": 1
  },
  "New Orleans": {
    "Ramon Bojorquez": 19,
    "Jason Cichonski": 18,
    "Aaron Cuschieri": 17,
    "Bret Pelaggi": 16,
    "Janine Booth": 15,
    "Michael Sichel": 14,
    "Bene Bartolotta": 13,
    "Patricia Vega": 12,
    "Sara Johannes": 11,
    "Travis Masar": 10,
    "Justin Devillier": 9,
    "Carrie Mashaney": 8,
    "Stephanie Cmar": 7,
    "Brian Huskey": 6,
    "Carlos Gaytan": 5,
    "Louis Maldonado": 3,
    "Shirley Chung": 3,
    "Nina Compton": 2,
    "Nicholas Elmi": 1
  },
  "Boston": {
    "Michael Patlazhan": 16,
    "Joy Crump": 15,
    "Ron Eyester": 14,
    "Rebecca LaMalfa": 12,
    "James Rigato": 12,
    "Aaron Grissom": 11,
    "Stacy Cogswell": 10,
    "Keriann Von Raesfeld": 9,
    "Katie Weinner": 8,
    "Adam Harvey": 7,
    "Katsuji Tanabe": 6,
    "George Pagonis": 5,
    "Melissa King": 4,
    "Doug Adams": 3,
    "Gregory Gourdet": 2,
    "Mei Lin": 1
  },
  "California": {
    "Garret Fleming": 17,
    "Renee Kelly": 16,
    "Frances Tariga-Weshnak": 15,
    "Grayson Schmitz": 14,
    "Giselle Wellman": 13,
    "Angelina Bastidas": 12,
    "Wesley True": 11,
    "Jason Stratton": 10,
    "Chad White": 9,
    "Phillip Lee": 8,
    "Karen Akunowicz": 7,
    "Kwame Onwuachi": 6,
    "Carl Dooley": 5,
    "Isaac Toups": 3,
    "Marjorie Meek-Bradley": 3,
    "Amar Santana": 2,
    "Jeremy Ford": 1
  },
  "Charleston": {
    "Gerald Sombright": 16,
    "Annie Pettry": 15,
    "Sam Talbot": 14,
    "BJ Smith": 13,
    "Silvia Barban": 12,
    "Amanda Baumgarten": 11,
    "Jim Smith": 10,
    "Jamie Lynch": 9,
    "Katsuji Tanabe": 8,
    "Emily Hahn": 7,
    "Casey Thompson": 6,
    "Sylva Senat": 5,
    "John Tesar": 4,
    "Sheldon Simeon": 3,
    "Shirley Chung": 2,
    "Brooke Williamson": 1
  },
  "Colorado": {
    "Joe Flamm": 1,
    "Adrienne Cheatham": 2,
    "Joe Sasto": 3,
    "Carrie Baird": 4,
    "Chris Scott": 5,
    "Bruce Kalman": 6,
    "Fatima Ali": 7,
    "Claudette Zepeda-Wilkins": 8,
    "Tanya Holland": 9,
    "Brother Luck": 10,
    "Lee Anne Wong": 11,
    "Tu David Phu": 12,
    "Tyler Anderson": 13,
    "Rogelio Garcia": 14,
    "Laura Cole": 15,
    "Melissa Perfit": 16
  },
  "Kentucky": {
    "Caitlin Steininger": 16,
    "Natalie Maronski": 15,
    "Kevin Scharpf": 14,
    "Pablo Lamon": 12,
    "Nini Nguyen": 12,
    "Brother Luck": 11,
    "Brandon Rosen": 10,
    "Brian Young": 9,
    "David Viana": 8,
    "Edmund Konrad": 7,
    "Justin Sutherland": 6,
    "Adrienne Wright": 5,
    "Michelle Minori": 4,
    "Eric Adjepong": 3,
    "Sara Bradley": 2,
    "Kelsey Barnard Clark": 1
  },
  "All-Stars L.A.": {
    "Joe Sasto": 15,
    "Angelo Sosa": 14,
    "Jamie Lynch": 13,
    "Lisa Fernandes": 12,
    "Jennifer Carroll": 11,
    "Nini Nguyen": 10,
    "Eric Adjepong": 9,
    "Lee Anne Wong": 8,
    "Karen Akunowicz": 7,
    "Brian Malarkey": 6,
    "Gregory Gourdet": 5,
    "Kevin Gillespie": 4,
    "Stephanie Cmar": 2,
    "Bryan Voltaggio": 2,
    "Melissa King": 1
  },
  "Portland": {
    "Roscoe Hall": 15,
    "Sasha Grumman": 14,
    "Brittanny Anderson": 13,
    "Kiki Louya": 12,
    "Nelson German": 11,
    "Gabriel Pascuzzi": 11,
    "Avishar Barua": 9,
    "Sara Hauman": 8,
    "Chris Viaud": 7,
    "Byron Gomez": 6,
    "Maria Mazon": 5,
    "Jamie Tran": 4,
    "Dawn Burrell": 2,
    "Shota Nakajima": 2,
    "Gabe Erales": 1
  },
  "Houston": {
    "Leia Gaccione": 15,
    "Stephanie Miller": 14,
    "Sam Kang": 13,
    "Robert Hernandez": 12,
    "Monique Feybesse": 11,
    "Jo Chan": 10,
    "Jackson Kalb": 9,
    "Luke Kolpin": 8,
    "Jae Jung": 7,
    "Ashleigh Shanti": 6,
    "Nick Wallace": 5,
    "Damarr Brown": 4,
    "Sarah Welch": 2,
    "Evelyn Garcia": 2,
    "Buddha Lo": 1
  }
}

top_chef_seasons = []

snum = 1
top_chef_contestants.each do |season_name, contestants|
  tmp = {}
  tmp[:number] = snum
  tmp[:name] = season_name
  tmp[:contestants] = []

  snum += 1

  contestants.each do |contestant|
    fname, _, lname = contestant.rpartition(' ')
    tmp[:contestants].append({ fname:, lname:, rank: ranks[season_name][contestant.to_sym] })
  end

  top_chef_seasons.append(tmp)
end

File.open('./db/top_chef_contestants.json', 'w') do |f|
  f.write(top_chef_seasons.to_json)
end
