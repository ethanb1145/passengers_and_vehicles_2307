require "./lib/vehicle"
require "./lib/passenger"
require "./lib/park"

RSpec.describe Park do
  before(:each) do
    @park = Park.new({name: "Parkington Park", admission_price: 10}) 
  end
  describe "#initialize" do 
    it "exists" do
      expect(@park).to be_instance_of(Park)
    end

    it "has a name" do 
      expect(@park.name).to eq("Parkington Park")
    end

    it "has an admission price" do 
      expect(@park.admission_price).to eq(10)
    end

    it "has a collection of vehicles that entered the park" do 
      expect(@park.vehicles).to eq([])
    end

    it "has a collection of passengers that entered the park" do 
      expect(@park.passengers).to eq([])
    end
  end
end