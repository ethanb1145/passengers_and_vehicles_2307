require "./lib/vehicle"
require "./lib/passenger"
require "./lib/park"

RSpec.describe Park do
  before(:each) do
    @park = Park.new({name: "Parkington Park", admission_price: 10})
    @vehicle = Vehicle.new("2001", "Honda", "Civic")
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

    it "has a revenue" do 
      expect(@park.revenue).to eq(0)
    end
  end

  describe "#add_vehicle" do 
    it "can add vehicle and its passengers to its collection" do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      jude = Passenger.new({"name" => "Jude", "age" => 20})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})
      @vehicle.add_passenger(charlie)
      @vehicle.add_passenger(jude)
      @vehicle.add_passenger(taylor)
      @park.add_vehicle(@vehicle)

      expect(@vehicle.passengers).to eq([charlie, jude, taylor])
      expect(@park.vehicles).to eq([@vehicle])
      expect(@park.passengers).to eq([charlie, jude, taylor])
      expect(@park.revenue).to eq(20)
    end
  end
end