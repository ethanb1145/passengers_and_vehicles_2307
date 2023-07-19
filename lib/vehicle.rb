class Vehicle
  attr_reader :year, :make, :model, :speeding, :passengers

  def initialize(year, make, model, speeding = false)
    @year = year
    @make = make
    @model = model
    @speeding = speeding
    @passengers = []
  end

  def speeding?
    if @speeding == true
      true
    else 
      false
    end
  end

  def speed
    @speeding = true
  end

  def add_passenger(person)
    @passengers << person
  end
end