#weathertest

require 'minitest/autorun'
require 'minitest/pride'
require './current_conditions.rb'

class CurrentConditions
  def request_conditions
    JSON.parse(File.read('27707.json'))
  end
end

class WeatherTests < Minitest::Test

  def test_initialize
    assert CurrentConditions.new(27707)
  end

  def test_location
    cc = CurrentConditions.new(27707)
    assert_equal 'Durham', cc.city
    assert_equal 'NC', cc.state
  end

  def test_weather
    cc = CurrentConditions.new(27707)
    assert_equal 'clear', cc.weather
    assert_equal "7", cc.uv
  end

  def test_wind
    cc = CurrentConditions.new(27707)
    assert_equal 0.0, cc.wind
    assert_equal "calm", cc.ws
    assert_equal "west", cc.wd
  end

  def test_temp
    cc = CurrentConditions.new(27707)
    assert_equal 65.0, cc.temp
    assert_equal "65.0", cc.feelslike
  end
end

#Get a file that is a coyp a file JSON.parser (File.read('Filename.json'))  Make a class at the top called same thing as your normal class.

#3 problems, 1. not sure what would happen 2. internet connection? 3. Raindrops (Hitting the API too much)
