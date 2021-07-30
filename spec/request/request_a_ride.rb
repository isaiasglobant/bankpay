require "spec_helper"

RSpec.describe GrapeSkeleton::API::Base, :type => :request do
  def app
    GrapeSkeleton::API::Base.new
  end

  let(:rider) { create(:rider) }
  let(:driver) { create(:driver) }

  let(:latitude) { "11.011315" }
  let(:longitude) { "-74.829380" }

  it "creates a Widget and redirects to the Widget's page" do
    post "ride/create/#{rider.id}", { latitude:  latitude, longitude: longitude }
    
    expect(last_response.status).to eq(201)
  end
end
