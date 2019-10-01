

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

    if empty?
      raise 'fail'
    elsif notallbikesbroken() == false
      raise "its working"
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
      raise "it's full"
    else
      bikes << bike
    end
    # broken = true
    # if broken == true
    #   bike.reportbroken()
    # end
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
    bike.broke()
  end

  def notallbikesbroken()

  end

end

class Bike
  attr_reader :broken
  def initialize
    @broken = false
  end

  def working?
    if @broken == true
      return false
    else
      return true
    end
  end

  def broke
    @broken = true
  end

end

# docking_station = DockingStation.new(1)
# bike = Bike.new
# docking_station.dock(bike)
# bike.broke
# p docking_station.list_of_bikes
# bike2 = Bike.new
# docking_station.dock(bike)
# p docking_station.list_of_bikes
