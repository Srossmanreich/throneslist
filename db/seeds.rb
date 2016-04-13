house_list = [
  [ "House Arryn", "As High as Honor" ],
  [ "House Baratheon", "Ours is the Fury" ],
  [ "House Bolton", "Our Blades are Sharp" ],
  [ "House Frey", "[REDACTED]" ],
  [ "House Greyjoy", "We Do Not Sow" ],
  [ "House Lannister", "Hear Me Roar" ],
  [ "House Martell", "Unbowed, Unbent, Unbroken" ],
  [ "House Tyrell", "Growing Strong" ],
  [ "House Stark", "Winter is Coming" ],
  [ "House Targaryen", "Fire and Blood" ],
  [ "House Tully", "Family, Duty, Honor" ]
]

house_list.each do |name, description|
  Category.create( name: name, description: description )
end
