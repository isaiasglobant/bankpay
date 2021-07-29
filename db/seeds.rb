require_relative '../app/models/driver'
require_relative '../app/models/rider'
#Drivers
Driver.create(name: "Joe Arroyo", final_location: "11.006506, -74.830908")
Driver.create(name: "Juanes", final_location: "11.007914, -74.803950")
Driver.create(name: "Diomedes Diaz", final_location: "11.002726, -74.804497")
Driver.create(name: "Carlos Vives", final_location: "11.020139, -74.812272")

# Riders
Rider.create(name: "Freddy Mercury", email: "freddymercury@example.com",
  payment_source_id: 15016
)
Rider.create(name: "Joaquin Sabina", email: "joaquinsabina@example.com",
  payment_source_id: 15016
)
Rider.create(name: "Frank Sinatra", email: "franksinatra@example.com",
  payment_source_id: 15016
)
Rider.create(name: "Shakira", email: "shakira@example.com",
  payment_source_id: 15016
)
