require "./lib/vehicle"
require "./lib/passenger"

RSpec.describe Vehicle do
  before(:each) do
    @vehicle = Vehicle.new("2001", "Honda", "Civic") 
  end
  describe "#initialize" do 
    it "exists" do
      expect(@vehicle).to be_instance_of(Vehicle)
    end

    it "has a year" do 
      expect(@vehicle.year).to eq("2001")
    end

    it "has a make" do 
      expect(@vehicle.make).to eq("Honda")
    end

    it "has a model" do 
      expect(@vehicle.model).to eq("Civic")
    end
  end

  describe "#speeding?" do 
    it "returns true if vehicle is speeding" do
      expect(@vehicle.speeding?).to be(false)

      @vehicle.speed

      expect(@vehicle.speeding?).to be(true)
    end
  end

  describe "#add_passenger" do 
    it "can add passengers to the vehicle" do
      expect(@vehicle.passengers).to eq([])

      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      jude = Passenger.new({"name" => "Jude", "age" => 20})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})
      @vehicle.add_passenger(charlie)
      @vehicle.add_passenger(jude)
      @vehicle.add_passenger(taylor)

      expect(@vehicle.passengers).to eq([charlie, jude, taylor])
    end
  end
end