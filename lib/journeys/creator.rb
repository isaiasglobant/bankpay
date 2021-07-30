module Journeys
  class Creator
    attr_reader :driver
  
    def initialize(rider_id, latitude, longitude)
      @rider_id = rider_id
      @latitude = latitude
      @longitude = longitude
    end
  
    def execute
      rider = Rider.find(@rider_id)
      assign_a_driver

      journey = Journey.create(rider: rider, driver: driver,
        origin: origin, destination: driver.final_location,
        status: 'started'
      )
    end
  
    private

    def origin
      return if @latitude.nil? || @longitude.nil?

      "#{@latitude}, #{@longitude}"
    end

    def assign_a_driver
      drivers = Driver.all
      @driver ||= drivers[rand(0...drivers.size)]
    end
  end  
end
