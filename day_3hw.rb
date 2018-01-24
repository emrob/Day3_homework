stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]

stops << "Edinburgh Waverley"
stops.unshift "Glasgow Queen St"
stops.insert(4, "Polmont")

p stops

p stops.index("Linlithgow")

stops.delete("Livingston")
p stops

stops.delete_at(1)
p stops

p stops.count
p stops[2]
p stops[-4]

p stops.reverse

for stations in stops
  p stations

end

users = {
   "Jonathan" => {
     :twitter => "jonnyt",
     :favourite_numbers => [12, 42, 75, 12, 5],
     :home_town => "Stirling",
     :pets => {
       "fluffy" => :cat,
       "fido" => :dog,
       "spike" => :dog
     }
   },
   "Erik" => {
     :twitter => "eriksf",
     :favourite_numbers => [8, 12, 24],
     :home_town => "Linlithgow",
     :pets => {
       "nemo" => :fish,
       "kevin" => :fish,
       "spike" => :dog,
       "rupert" => :parrot
     }
   },
   "Avril" => {
     :twitter => "bridgpally",
     :favourite_numbers => [12, 14, 85, 88],
     :home_town => "Dunbar",
     :pets => {
       "colin" => :snake
     }
   },

 }

p users ["Jonathan"] [:twitter]
p users ["Erik"][:home_town]
p users ["Erik"][:favourite_numbers]
p users ["Avril"] [:pets] ["colin"]
p users ["Erik"][:favourite_numbers].sort[0]
p users ["Erik"][:favourite_numbers] <<7
p users ["Erik"][:home_town][0] = "Edinburgh"
users ["Erik"][:pets]["fluffy"]= :dog
p users ["Erik"][:pets]
users["Emma"] = :user1
p users.keys

united_kingdom = [
  {
    name: "Scotland",
    population: 5295000,
    capital: "Edinburgh"
  }, {
    name: "Wales",
    population: 3063000,
    capital: "Swansea"
  }, {
    name: "England",
    population: 53010000,
    capital: "London"
  }
]


united_kingdom [1][:capital] = "Cardiff"
p united_kingdom [1]

united_kingdom << {
name: "Northern Ireland",
population: 1811000,
capital: "Belfast"

}

p united_kingdom

for names in united_kingdom
  p  names[:name]
end

def uk_population(united_kingdom)
  total = 0
  for pop in united_kingdom
    total += pop[:population]
  end
  return total
end
p uk_population(united_kingdom)
