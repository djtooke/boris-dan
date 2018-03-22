class DockingStation
  attr_reader :bike_array
  attr_reader :capacity

  def initialize
    @bike_array = []
    @capacity = 20
  end

  def dock(bike)
    if full?
      raise "Nope! This bike station is already full."
    else @bike_array << bike
    end
  end

  def release_bike
    if empty?
      @bike_array.pop
    else raise "Nope! There are no more bikes here to release."
    end
  end

  private

  def full?
    @bike_array.count == @capacity
  end

  def empty?
    !@bike_array.count > 0
  end

end
