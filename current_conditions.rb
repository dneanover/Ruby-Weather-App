#weather
require 'httparty'
require 'dotenv'
Dotenv.load

class CurrentConditions

  def initialize(zip)
  @zip = zip
  end

  def token
    ENV["SECRET_KEY"]
  end

  def request_conditions
    response = HTTParty.get("http://api.wunderground.com/api/#{token}/conditions/q/#{@zip}.json")
    response["current_observation"]
    # weather
    # temp_f
    # wind_mph
    # relative_humidity
    # uv
  end

  def weather
    request_conditions

  end

  def temp_f
    request_conditions["temp_f"]


  end


end


# Understand the purpose and structure of Web APIs
# Understand JSON structure
# Be able to access an API using a token
# Be able to make HTTP requests via HTTParty
# Be able to create a Ruby class which wraps API calls
# Have gained more experience using TDD

# Your task is to create a Ruby application which will query API endpoints from Weather Underground, and will present a weather summary to the user. When the user runs the application, he or she will be asked for a zip code, and the summary will be for that location.
#
# Your summary will be puts'ed to the screen, and must include the following (information):
#
# Current conditions at that location
# Make sure that the summary you display is easy to read for users. A pile of numbers with no descriptors won't do anyone any good.
#
# You must use at least one Ruby class for the code, and at least one Ruby class for the tests. In the course of running your code, you must instantiate objects from that class.
#
# Testing is going to be tricky on this one. You don't have to test everything, but you do need at least three solid tests for this assignment to be considered complete.
#
# No database is needed for Normal Mode.
