class DockingStation
    
    attr_writer :docked_bikes

    def initialize
        @docked_bikes = []
    end

    def docked_bikes
        @docked_bikes
    end

    def release_bike
        if docked_bikes.empty? == true
            begin
                raise 'There is no bike'
            end
        else
            bike = Bike.new
            return bike
        end
    end

    def dock_bike(bike)
        if docked_bikes.size > 19
            raise 'The docking station is full'
        else
            docked_bikes << bike
        end
    end
end