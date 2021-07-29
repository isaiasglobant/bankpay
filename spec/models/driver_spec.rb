require 'spec_helper'

RSpec.describe Driver, :type => :model do
  it "is valid with valid attributes" do
    expect(Driver.
      new(name: 'Polo montañez', final_location: "11.005959, -74.829974")
    ).to be_valid
  end
end
