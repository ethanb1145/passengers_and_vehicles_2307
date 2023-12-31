class Park
  attr_reader :name, :admission_price, :vehicles, :passengers, :revenue

  def initialize(park_info)
    @name = park_info[:name]
    @admission_price = park_info[:admission_price]
    @vehicles = []
    @passengers = []
    @revenue = 0
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
    @passengers.concat(vehicle.passengers)
  end

  def revenue
    total_revenue = 0

    @passengers.each do |passenger|
      total_revenue += @admission_price if passenger.adult?
    end
    total_revenue
  end
end