

class DockingStation
  attr_reader :bikes
  DEFAULT_CAPACITY = 20
 # todo make docking station private
  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity2 = capacity
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
    if :empty? == false
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
    if :full? 
      bikes << bike
    else
      fail
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
    if bikes.count <= capacity2
      return false
    else
      return true
    end
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

# docking_station = DockingStation.new
# bike = docking_station.release_bike
# docking_station.release_bike
# # p docking_station.list_of_bikes
# # p bike
# # docking_station.add_bike(bike)
# # p docking_station.list_of_bikes
