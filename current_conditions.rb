#weather
require 'httparty'
require 'dotenv'
Dotenv.load

class CurrentConditions
  attr_reader :zip, :city, :state, :weather, :temp, :feelslike, :wind, :wd, :ws, :uv

  def initialize(zip)
    @zip = zip
    conditions = request_conditions
    @city = conditions['current_observation']['display_location']['city']
    @state = conditions['current_observation']['display_location']['state']
    @weather =conditions['current_observation']['weather'].downcase
    @temp = conditions['current_observation']['temp_f']
    @feelslike = conditions['current_observation']['feelslike_f']
    @wind = conditions['current_observation']['wind_mph']
    @wd = conditions['current_observation']['wind_dir'].downcase
    @ws = conditions['current_observation']['wind_string'].downcase
    @uv = conditions['current_observation']['UV']
  end

  def token
    ENV['SECRET_KEY']
  end

  def request_conditions
    response = HTTParty.get("http://api.wunderground.com/api/#{token}/conditions/q/#{@zip}.json")
  end

  #v2 would have created a solution where it would have provided a solution for zipcodes without cities like 12346 (Thanks Alabama)
end
