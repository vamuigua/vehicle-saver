class Vehicle
    #attribute reader
    attr_reader(:make, :model, :year, :color, :engine_size, :number_of_doors)
    
    #array to store vehicles
    @@vehicles = []
    
    #initialize variables
    define_method(:initialize) do |attributes|
      @make = attributes.fetch(:make)
      @model = attributes.fetch(:model)
      @year = attributes.fetch(:year)
      @color = attributes.fetch(:color)
      @engine_size= attributes.fetch(:engine_size)
      @number_of_doors = attributes.fetch(:number_of_doors)
      @id = @@vehicles.length().+(1)
    end
    
    #method for id
    define_method(:id) do
      @id
    end
    
    #method for checking all vehicles
    define_singleton_method(:all) do
      @@vehicles
    end
    
    #method for saving new vehicles
    define_method(:save) do
      @@vehicles.push(self)
    end
    
    #method for clearing the vehicles array list
    define_singleton_method(:clear) do
      @@vehicles = []
    end

    #method for checking the age of an individual vehicle
    define_method(:age) do
      current_year = Time.new().year()
      current_year.-(@year)
    end
    
    #method for checking if vehicle is worth buying
    define_method(:worth_buying?) do
      american_cars = ["Chrysler", "Ford", "GM"]
      american_cars.include?(@make).&(self.age().<=(15))
    end
    
    #method to find the id of a vehicle
    define_singleton_method(:find) do |identification|
      found_vehicle = nil
      @@vehicles.each() do |vehicle|
        if vehicle.id().eql?(identification.to_i())
          found_vehicle = vehicle
        end
      end
      found_vehicle
    end
  end
  