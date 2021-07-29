require_relative '../app/models/driver'
require_relative '../app/models/rider'
#Drivers
Driver.create(name: "Joe Arroyo", current_location: "11.006506, -74.830908")
Driver.create(name: "Juanes", current_location: "11.007914, -74.803950")
Driver.create(name: "Diomedes Diaz", current_location: "11.002726, -74.804497")
Driver.create(name: "Carlos Vives", current_location: "11.020139, -74.812272")

# Riders
Rider.create(name: "Freddy Mercury", origin: "10.990235, -74.795182", 
  destination: "11.005959, -74.829974", email: "freddymercury@example.com",
  payment_source_id: 15016
)
Rider.create(name: "Joaquin Sabina", origin: "11.010513, -74.827527", 
  destination: "10.988179, -74.787878", email: "joaquinsabina@example.com", 
  payment_source_id: 15016
)
Rider.create(name: "Frank Sinatra", origin: "10.977160, -74.787940", 
  destination: "10.951554, -74.798827", email: "franksinatra@example.com",
  payment_source_id: 15016
)
Rider.create(name: "Shakira", origin: "10.945551, -74.833559", 
  destination: "11.010386, -74.838156", email: "shakira@example.com",
  payment_source_id: 15016
)
