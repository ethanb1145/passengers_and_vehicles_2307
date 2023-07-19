require "./lib/vehicle"
require "./lib/passenger"
require "./lib/park"

RSpec.describe Park do
  before(:each) do
    @park = Park.new 
  end
  describe "#initialize" do 
    it "exists" do
      expect(@park).to be_instance_of(Park)
    end

    it "has a name" do 
      expect(@park.name).to eq()
    end

    it "has an admission price" do 
      expect(@park.price).to eq()
    end

    it "has a collection of passengers that entered the park" do 
      expect(@park).to eq([])
    end
  end
end