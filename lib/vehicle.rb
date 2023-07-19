class Vehicle
  attr_reader :year, :make, :model, :speeding

  def initialize(year, make, model, speeding = false)
    @year = year
    @make = make
    @model = model
    @speeding = speeding
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

end