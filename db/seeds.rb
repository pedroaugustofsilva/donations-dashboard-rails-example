# Check and create a church campaign
unless Campaign.exists?(category: :church)
  Campaign.create(
    name: "Holy Guacamole Fundraiser",
    category: "church",
    description: "Join our quest to make the world's largest guacamole dish! Proceeds go towards our church's new avocado-themed chapel."
  )
end

# Check and create a medical campaign
unless Campaign.exists?(category: :medical)
  Campaign.create(
    name: "Operation Teddy Bear",
    category: "medical",
    description: "Help fund a revolutionary procedure that gives teddy bears to children in hospitals. Every cuddle counts!"
  )
end

# Check and create an animal campaign
unless Campaign.exists?(category: :animal)
  Campaign.create(
    name: "Penguins' Pool Party",
    category: "animal",
    description: "Support our Antarctic friends. We're building a luxury pool for penguins who prefer a splash of style in their swim!"
  )
end

# Check and create a political campaign
unless Campaign.exists?(category: :political)
  Campaign.create(
    name: "Ducks for Mayor",
    category: "political",
    description: "Vote for the ducks! Our feathered candidates promise more ponds in parks. It's time for a quack-tastic future."
  )
end
