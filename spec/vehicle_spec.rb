require('rspec')
  require('vehicle')

  describe('Vehicle') do
    before() do
      Vehicle.clear()
    end
      
    #spec to make a new vehicle instance
    describe("#make") do
      it("returns the make of the vehicle") do
        test_vehicle = Vehicle.new({:make=> "Toyota", :model => "Prius", :year => 2000, :color => "blue", :engine_size => "4L", :number_of_doors => "4"})
        expect(test_vehicle.make()).to(eq("Toyota"))
      end
    end

    #spec check model of vehicle
    describe("#model") do
      it("returns the model of the vehicle") do
        test_vehicle = Vehicle.new({:make=> "Toyota", :model => "Prius", :year => 2000, :color => "blue", :engine_size => "4L", :number_of_doors => "4"})
        expect(test_vehicle.model()).to(eq("Prius"))
      end
    end

    #spec to check the year the vehicle was made
    describe("#year") do
      it("returns the year of the vehicle") do
        test_vehicle = Vehicle.new({:make=> "Toyota", :model => "Prius", :year => 2000, :color => "blue", :engine_size => "4L", :number_of_doors => "4"})
        expect(test_vehicle.year()).to(eq(2000))
      end
    end

    #spec for color
    describe("#color") do
      it("returns the color of the vehicle") do
        test_vehicle = Vehicle.new({:make=> "Toyota", :model => "Prius", :year => 2000, :color => "blue", :engine_size => "4L", :number_of_doors => "4"})
        expect(test_vehicle.color()).to(eq("blue"))
      end
    end

    #spec for engine_size
    describe("#engine_size") do
      it("returns the engine_size of the vehicle") do
        test_vehicle = Vehicle.new({:make=> "Toyota", :model => "Prius", :year => 2000, :color => "blue", :engine_size => "4L", :number_of_doors => "4"})
        expect(test_vehicle.engine_size()).to(eq("4L"))
      end
    end

    #spec for number_of_doors
    describe("#number_of_doors") do
      it("returns the number_of_doors of the vehicle") do
        test_vehicle = Vehicle.new({:make=> "Toyota", :model => "Prius", :year => 2000, :color => "blue", :engine_size => "4L", :number_of_doors => "4"})
        expect(test_vehicle.number_of_doors()).to(eq("4"))
      end
    end  
    
    #spec to check vehicles in the array list  
    describe(".all") do
      it("is empty at first") do
        expect(Vehicle.all()).to(eq([]))
      end
    end

    #spec to save new vehicle instances
   describe("#save") do
      it("adds a vehicle to the array of saved vehicles") do
        test_vehicle = Vehicle.new({:make=> "Toyota", :model => "Prius", :year => 2000, :color => "blue", :engine_size => "4L", :number_of_doors => "4"})
        test_vehicle.save()
        expect(Vehicle.all()).to(eq([test_vehicle]))
      end
    end

    #spec to clear the vehicles array list
   describe(".clear") do
      it("empties out all of the saved vehicles") do
        Vehicle.new({:make=> "Toyota", :model => "Prius", :year => 2000, :color => "blue", :engine_size => "4L", :number_of_doors => "4"}).save()
        Vehicle.clear()
        expect(Vehicle.all()).to(eq([]))
      end
    end
    
    #spec to check the age of the vehicle
    describe("#age") do
      it("returns the vehicles age") do
        test_vehicle = Vehicle.new({:make=> "Toyota", :model => "Prius", :year => 2000, :color => "blue", :engine_size => "4L", :number_of_doors => "4"})
        expect(test_vehicle.age()).to(eq(17))
      end
    end
      
    #spec to check if vehicle is worth-buying
    describe("#worth_buying?") do
      it("returns false if the car is not American made and less than 15 years old") do
        test_vehicle = Vehicle.new({:make=> "Toyota", :model => "Prius", :year => 2000, :color => "blue", :engine_size => "4L", :number_of_doors => "4"})
        expect(test_vehicle.worth_buying?()).to(eq(false))
      end
    end
    
    #spec to give the id of the vehicle
    describe("#id") do
      it("returns the id of the vehicle") do
        test_vehicle = Vehicle.new({:make=> "Toyota", :model => "Prius", :year => 2000, :color => "blue", :engine_size => "4L", :number_of_doors => "4"})
        test_vehicle.save()
        expect(test_vehicle.id()).to(eq(1))
      end
    end
    
    #spec to find each vehicle by id
    describe(".find") do
    it("returns a vehicle by its id number") do
      test_vehicle = Vehicle.new({:make=> "Toyota", :model => "Prius", :year => 2000, :color => "blue", :engine_size => "4L", :number_of_doors => "4"})
      test_vehicle.save()
      test_vehicle2 = Vehicle.new({:make=> "Toyota", :model => "Corolla", :year => 1999, :color => "red", :engine_size => "2L", :number_of_doors => "4"})
      test_vehicle2.save() 
      expect(Vehicle.find(test_vehicle.id())).to(eq(test_vehicle))
    end
  end
end