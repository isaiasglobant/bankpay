require "spec_helper"

RSpec.describe Journeys::CostCalculator, :type => :model do
  context "with 2 or more comments" do
    let(:origin) { "11.011315, -74.829380" }
    let(:destination) { "11.002569, -74.809068" }
    let(:response) do
      JSON.parse({
        "destination_addresses": [
            "Cl. 79 #51b72, Barranquilla, Atlántico, Colombia"
        ],
        "origin_addresses": [
            "Cra. 51 ##98-13, Barranquilla, Atlántico, Colombia"
        ],
        "rows": [
            {
                "elements": [
                    {
                        "distance": {
                            "text": "2.4 km",
                            "value": 2424
                        },
                        "duration": {
                            "text": "8 mins",
                            "value": 493
                        },
                        "status": "OK"
                    }
                ]
            }
        ],
        "status": "OK"
      }.to_json)
    end

    it "return the cost of the journey" do
      allow_any_instance_of(
        GoogleApi::DistanceMatrixCalculator
      ).to receive(:execute).and_return(response)

      expect(Journeys::CostCalculator.new(origin, destination).execute).to eq(7567)
    end
  end
end