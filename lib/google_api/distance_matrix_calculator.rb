module GoogleApi
  class DistanceMatrixCalculator
    include HTTParty
    base_uri 'https://maps.googleapis.com/maps/api'

    def initialize(origin, destination)
      @options = { query: 
        { 
          origins: origin, 
          destinations: destination, 
          key: ENV['GOOGLE_API_KEY'], 
          units: 'metrico' 
        }
      }
    end

    def execute
      self.class.get('/distancematrix/json', @options)
    end
  end 
end
