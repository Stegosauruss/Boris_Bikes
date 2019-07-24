require 'docking_station.rb'
require 'bike'
describe DockingStation do
  
  it { is_expected.to respond_to :release_bike }

  it 'bikes have a working? method' do
    bike = Bike.new
    expect(bike).to respond_to :working?
  end

  it 'docking station has a dock_bike(bike) method' do
    expect(subject).to respond_to :dock_bike
  end

  it 'docked_bikes exists' do
    expect(subject.docked_bikes.is_a?(Array)).to be true
  end

  it 'dock_bike(bike) adds an instance of bike to the instance variable bikes' do
    subject.dock_bike(Bike.new)
    expect(subject.docked_bikes.size).to be > 0
  end

  it 'Raise error when asking empty dockingstation to release' do
    expect{subject.release_bike}.to raise_error('There is no bike')
  end

  it 'Raise error when asking a full dockingstation to dock' do
    20.times {subject.dock_bike(Bike.new)}
    bike = Bike.new
    expect{subject.dock_bike(bike)}.to raise_error('The docking station is full')
  end

  it '@capacity use default value when not set' do
    test_station = DockingStation.new()
    expect(test_station.capacity).to eq(20)
  end

  it '@capacity can be set during initialization' do
    test_station = DockingStation.new(200)
    expect(test_station.capacity).to eq(200)
  end




end
