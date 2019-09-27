require 'borisbikes'

describe DockingStation do


it 'releases bike from docking station' do
docking_station = DockingStation.new
expect(docking_station).to respond_to(:release_bike)
end

it 'releases a working bike' do
  docking_station = DockingStation.new
  docking_station.dock(Bike.new)
  bike = docking_station.release_bike
  expect(bike.class).to eq(Bike)
  expect(bike.working?).to eq(true)
end

it 'takes a bike as arg, adds to instance var' do
  docking_station = DockingStation.new
  bike = Bike.new
  docking_station.dock(bike)
  expect(docking_station.list_of_bikes).to include(bike)
end

it 'does not release bikes when none are available' do
  docking_station = DockingStation.new
  expect { raise docking_station.release_bike}.to raise_error
end

it 'doe not release bikes when none are available' do
  docking_station = DockingStation.new
  bike = Bike.new
  docking_station.dock(Bike.new)
  expect { raise docking_station.add_bike(bike)}.to raise_error
end

it 'check if you can put 20 boris bikes in one station' do
  docking_station = DockingStation.new
  20.times {docking_station.dock Bike.new}
end



end
