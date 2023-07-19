require "./lib/passenger"

RSpec.describe Passenger do
  before(:each) do
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
  end
  describe "#initialize" do 
    it "exists" do
      expect(@charlie).to be_instance_of(Passenger)
    end

    it "has a name" do 
      expect(@charlie.name).to eq("Cnarlie")
    end
  end

end
  