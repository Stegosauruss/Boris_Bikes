class DockingStation
    
    attr_writer :docked_bikes
    attr_reader :capacity
    DEFAULT_CAPACITY = 20
    
    def initialize(capacity=DEFAULT_CAPACITY)
        @docked_bikes = []
        @capacity = capacity
    end

    def docked_bikes
        @docked_bikes
    end

    def release_bike
        if empty?
            raise 'There is no bike'
        end
        return Bike.new
    end

    def dock_bike(bike)
        if full?
            raise 'The docking station is full'
        end
        add_bike(bike)    
    end

    private
    def full?
        docked_bikes.size == capacity
    end

    def add_bike(bike)
        docked_bikes << bike
    end

    def empty?
        docked_bikes.empty?
    end




end