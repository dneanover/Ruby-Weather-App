#weathertest

require 'minitest/autorun'
require 'minitest/pride'
require './weather.rb'

class WeatherTest < Minitest::Test

  def initialize

  end

  def test_zipcode
    #test that zipcode length
    if zip #is less than 4 digits || greater than 5
      puts "Please enter a valid zipcode"
    else
      puts "Here is is your forecast for _________"
    end

  end
end
