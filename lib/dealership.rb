class Dealership
    
    #global array to store dealerships
    @@dealerships = []

    #method to initialize global variables
    define_method(:initialize) do |name|
      @name = name
      @id = @@dealerships.length().+(1)
      @cars = []
    end

    #method for dealership name
    define_method(:name) do
      @name
    end

    #method for the id of the dealership
    define_method(:id) do
      @id
    end

    #method for cars in the dealership
    define_method(:cars) do
      @cars
    end

    #class method for showing all dealerships 
    define_singleton_method(:all) do
      @@dealerships
    end
    
    #method for saving new dealerships
    define_method(:save) do
      @@dealerships.push(self)
    end
    
    #method for clearing the dealership array list
    define_singleton_method(:clear) do
      @@dealerships = []
    end

    #class method for finding the id of a particular dealership
    define_singleton_method(:find) do |id|
      found_dealership = nil
      @@dealerships.each() do |dealership|
        if dealership.id().eql?(id)
          found_dealership = dealership
        end
      end
      found_dealership
    end
    
    #method to add a vehicle to a dealership
    define_method(:add_vehicle) do |vehicle|
    @cars.push(vehicle)
  end
  end