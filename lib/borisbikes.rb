

class DockingStation
  attr_reader :bikes

  def initialize
  end

  def release_bike
    Bike.new()
  end

  def add_bike(bike)
    @bikes = bike
  end

  def list_of_bikes()
    bikes
  end
end

class Bike
  def initialize
  end

  def working?
    return true
  end
end
