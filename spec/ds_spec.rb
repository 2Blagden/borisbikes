require 'borisbikes'

describe DockingStation do


it 'releases bike from docking station' do
docking_station = DockingStation.new
expect(docking_station).to respond_to(:release_bike)
end

it '' do
  docking_station = DockingStation.new
  bike = docking_station.release_bike
  expect(bike.class).to eq(Bike)
  expect(bike.working?).to eq(true)
end

it 'takes a bike as arg, adds to instance var' do
  docking_station = DockingStation.new
  bike = Bike.new
  docking_station.add_bike(bike)
  expect(docking_station.list_of_bikes).to eq(bike)
end





end
