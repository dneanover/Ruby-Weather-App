require './current_conditions.rb'

def get_zip
  puts "What is your zipcode?"
end

get_zip

while zipcode = gets.chomp
  if zipcode =~ /^\d{5}$/
    break
  else
    get_zip
  end
end

cc = CurrentConditions.new(zipcode)
puts "The weather report for #{cc.city}, #{cc.state} is as follows:"
puts "It is currently #{cc.temp} degrees outside and #{cc.weather} with a UV index of #{cc.uv}.  It feels like #{cc.feelslike} with #{cc.wind} mph winds blowing from the #{cc.wd}"
puts "Have an excellent day"

#Making sure htat current test responses to humidity, but wouldn't right now because there isn't a response
#Check to make sure it responsds
#assert_responds_to
