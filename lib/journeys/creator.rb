module Journeys
  class Creator
    attr_reader :driver
  
    def initialize(rider_id)
      @rider_id = rider_id
    end
  
    def execute
      rider = Rider.find(@rider_id)
      assign_a_driver
      
      journey = Journey.create(rider: rider, driver: driver,
        origin: rider.origin, destination: rider.destination
      )
    end
  
    private

    def assign_a_driver
      drivers = Driver.all
      @driver ||= drivers[rand(0...drivers.size)]
    end
  end  
end
