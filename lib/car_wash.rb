class CarWash

  attr_reader :opening_year,
              :location,
              :employees

  def initialize(location, year)
    @opening_year = year # nice
    @location = location # this is the one area that requires a little more thought
    # With TDD, we should only build what we need to get the tests passing
    # When you get to your test_it_knows_its_state test, I'd recommend considering a few strategies
    # 1) create the @location ivar, then create a method that extracts city from @location (your approach)
    # 2) set city as an ivar right when you initialize using @location_city = @location.split(",")[0]
    # 3) create a method that can extract a city from a "City, ST" string, then set @location_city to equal the return value of that method
    # Be careful about getting in the habit of setting ivars (@location) when you initialize out of habit
    # Set them when you need them
    @employees = 0 # nice
  end

  def city # nice
    @location.split(",")[0]
  end

  def state # nice
    @location.split(", ")[1]
  end

  def hire_employees(num) # nice
    @employees += num
  end

end
