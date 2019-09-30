

class DockingStation
  attr_reader :bikes
  DEFAULT_CAPACITY = 20
 # todo make docking station private
  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []

    # @bikes << Bike.new
  end

  def release_bike
    # if bikes.count > 0
    #   bikes.slice(0)
    #   bikes.delete_at(0)
    # else
    #   fail
    # end
    if :empty? == false && broken == false
      fail
    else
      bikes.slice(0)
      bikes.delete_at(0)
    end
  end

  def dock(bike)
    # if bikes.count < 21
    #   bikes << bike
    # else
    #   fail 'Docking station full' if bikes.count >= 20
    # end
    if full?
      raise 'no space'
    else
      bikes << bike
    end

  end


  def empty?
    if bikes.count < 1
      return true
    else
      return false
    end
  end

  def full?
    bikes.count >= @capacity
  end


  def list_of_bikes()
    bikes
  end

  def reportbroken()
    if broken == true
      bike.broken()
    end
  end
end

class Bike
  attr_reader :broken
  def initialize
    @broken = false
  end

  def working?
    return true
  end

  def broken
    @broken = true
  end

end

docking_station = DockingStation.new(25)
25.times {docking_station.dock(Bike.new)}
p docking_station.list_of_bikes

 # docking_station = DockingStation.new
 # bike = 420
 # docking_station.dock(bike)
 # bike2 = 421
 # docking_station.dock(bike2)
 # p docking_station.list_of_bikes
# # p bike
# # docking_station.add_bike(bike)
# # p docking_station.list_of_bikes
