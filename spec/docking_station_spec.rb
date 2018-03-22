require 'docking_station'
require 'bike'



describe DockingStation do

  describe "release_bike"
  it "responds to release_bike method" do
    expect(subject).to respond_to (:release_bike)
  end

 # it "it creates a bike" do
 #   expect(DockingStation.new.release_bike).to be_instance_of (Bike)
 # end

 it "raises exception if @bike_array is empty" do
   expect{subject.release_bike}.to raise_error
 end

  describe "dock"
  it "pushes a bike object into the @bike_array" do
    station = DockingStation.new
    bike1 = Bike.new
    # station.dock(bike1)

    expect(station.dock(bike1)).to include bike1
  end

  it "raises an exception if the dock is full" do
    station = DockingStation.new
    20.times do station.dock(Bike.new) end
    expect{station.dock(Bike.new)}.to raise_error
 end

end
