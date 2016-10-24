require 'minitest/autorun'
require 'minitest/pride'
require './lib/car_wash'

class CarWashTest < Minitest::Test

  def test_there_can_be_a_carwash
    assert CarWash.new("Believeland, OH", 2001)
  end

  def test_carwash_for_opening_year
    result = CarWash.new("Someplace, SW", 2005)
    assert_equal 2005, result.opening_year
  end

  def test_it_can_have_location
    result = CarWash.new("Denver, CO", 2010)
    assert_equal "Denver, CO", result.location
  end

  def test_it_knows_its_state
    result = CarWash.new("Denver, CO", 2121)
    assert_equal "CO", result.state
  end

  def test_it_can_hire_employees
    result = CarWash.new("Boulder, CO", 2003)
    result.hire_employees(1)
    assert_equal 1, result.employees
  end

end