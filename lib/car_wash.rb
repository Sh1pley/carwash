

class CarWash

  attr_reader :opening_year, 
              :location, 
              :employees

  def initialize(location, year)
    @opening_year = year
    @location = location
    @employees = 0
  end

  def city
    @location.split(",")[0]
  end

  def state
    @location.split(", ")[1]
  end

  def hire_employees(num)
    @employees += num
  end

end