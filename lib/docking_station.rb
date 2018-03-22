class DockingStation
  attr_reader :bike_array
  attr_reader :capacity

  def initialize
    @bike_array = []
    @capacity = 1
  end

  def dock(bike)
    if @bike_array.count == @capacity
      raise "Nope! This bike station is already full."
    else @bike_array << bike
    end
  end

  def release_bike
    if @bike_array.count > 0
      @bike_array.pop
    else raise "Nope! There are no more bikes here to release."
    end
  end


end
