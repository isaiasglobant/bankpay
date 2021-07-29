module Journeys
  class CostCalculator
    require 'google_api/distance_matrix_calculator'
    BASE_FEE = 3500 # COP
    VALUE_PER_MIN = 200 # COP
    VALUE_PER_KM = 1000 # COP

    def initialize(origin, destination)
      @origin = origin
      @destination = destination
    end

    def execute
      get_data
      calculate_amount
    end

    def get_data
      @response = GoogleApi::DistanceMatrixCalculator.new(@origin, @destination).execute
    end

    def calculate_amount
      (BASE_FEE + (distance * VALUE_PER_KM) + (duration * VALUE_PER_MIN)).to_i
    end

    private
    # distance converted to kilometers
    def distance
      @distance ||= (@response["rows"][0]["elements"][0]["distance"]["value"]).to_f / 1000
    end

    # duration converted to minutes
    def duration
      @duration ||= (@response["rows"][0]["elements"][0]["duration"]["value"]).to_f / 60
    end
  end
end
