require "spec_helper"

RSpec.describe Journeys::Creator, :type => :model do
  context "when params are correct" do
  
    let(:rider) { create(:rider) }
    let(:driver) { create(:driver) }
    let(:latitude) { '11.002569' }
    let(:longitude) { '-74.809068' }

    let(:response) do
    end

    it "create a new journey" do
      expect{ 
        Journeys::Creator.new(rider.id, latitude, longitude).execute
      }.to change{Journey.count}.by(1)
    end
  end

  context "when params are incomplete" do
    let(:rider) { FactoryBot.create(:rider) }
    let(:driver) { FactoryBot.create(:driver) }
    let(:latitude) { nil }
    let(:longitude) { '-74.809068' }

    let(:response) do
    end

    it "does not create a new journey" do
      expect{ 
        Journeys::Creator.new(rider.id, latitude, longitude).execute
      }.to change{Journey.count}.by(0)
    end
  end
end
