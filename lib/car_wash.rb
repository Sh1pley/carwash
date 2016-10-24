require './lib/employee'

class CarWash


  def initialize(location, year)
    @opening_year = year
    @location = location
  end

  def opening_year
    @opening_year
  end

  def location
    @location
  end

  def city
    @location.split(",")[0]
  end

  def state
    @location.split(",")[1].gsub(" ", "")
  end

  def hire_employee
    Employee.new
  end
end