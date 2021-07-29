module Journeys
  class InfoUpdater
    require 'securerandom'
    require 'journeys/cost_calculator'
    require 'wompi/transaction_maker'
  
    def initialize(journey_id)
      @journey_id = journey_id
      @installments = 1
    end
  
    def execute
      @cost = CostCalculator.new(journey.origin, journey.destination).execute
      generated_payment_reference

      Wompi::TransactionMaker.new(amount_in_cents, 
        rider.email, @payment_reference, rider.payment_source_id, @installments
      ).execute

      journey.update(cost: @cost)
      journey
    end
  
    private

    def generated_payment_reference
      @payment_reference = SecureRandom.alphanumeric(19)
    end

    def amount_in_cents
      @cost * 100
    end

    def rider
      @rider ||= journey.rider
    end

    def journey
      @journey ||= Journey.includes(:rider).find(@journey_id)
    end
  end  
end
