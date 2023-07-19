class Park
  attr_reader :name, :admission_price, :vehicles, :passengers, :revenue
  def initialize(park_info)
    @name = park_info[:name]
    @admission_price = park_info[:admission_price]
    @vehicles = []
    @passengers = []
    @revenue = 0
  end
end