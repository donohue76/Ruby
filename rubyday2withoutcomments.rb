
class Vehicle


  def initialize
    @toggleLights = false
  end
  def lightsOn?
     return @toggleLights
  end
  def toggleLights
    if @toggleLights == false
      @toggleLights = true
    else
      @toggleLights = false
    end
  end
end


myVehicle = Vehicle.new



class Car < Vehicle

  def initialize(year)

    @wheels = 4

    @modelYear = year

    @speed = 0
  end

  def wheels
    return @wheels
  end
  def speed
    return @speed
  end

  def speedUp
    @speed = @speed + 1
  end
  def slowDown
    if @speed <= 0
      @speed = 0
    else
      @speed = @speed - 1
    end
  end
  def year
    return @modelYear
  end
end

myCar = Car.new(2016)



class Tesla < Car

  def accelerate
    @speed = @speed + 10
  end
  def brake
    if @speed < 7
      @speed = 0
    else
      @speed = @speed - 7
    end
  end
end

myTesla = Tesla.new(2016)
myTesla.brake



class Tata < Car

  def accelerate
    @speed = @speed + 2
  end

  def brake
    if @speed < 1.25
      @speed = 0
    else
      @speed = @speed - 1.25
    end
  end
end

myTata = Tata.new(2012)



class Toyota < Car

  def accelerate
    @speed = @speed + 7
  end

  def brake
    if @speed < 5
      @speed = 0
    else
      @speed = @speed - 5
    end
  end
end

myToyota = Toyota.new(1991)



garage = [andrewsTesla = Tesla.new(2016), davidsTesla = Tesla.new(1905), andrewsTata = Tata.new(1992), davidsTata = Tata.new(2025), andrewsToyota = Toyota.new(2004), davidsToyota = Toyota.new(2011)]


garage.sort_by {|car| car.year}



garage.sort_by {|car| car.class.to_s}


garage.sort_by {|car| [car.class.to_s, car.year]}
