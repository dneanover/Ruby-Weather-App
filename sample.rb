require './current_conditions.rb'

puts "What is your zipcode?"
zipcode = gets.chomp

cc = CurrentConditions.new(zipcode)

# cc.request_conditions
# cc.weather
puts "The Current Temperature is #{cc.temp_f}"

#Making sure htat current test responses to humidity, but wouldn't right now because there isn't a response
#Check to make sure it responsds
#assert_responds_to
