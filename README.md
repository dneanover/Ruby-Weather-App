#Weather Application ReadMe

###How to Get Your Current Weather Report
1. Clone this Git Repository onto your local machine.
2. Sign up as a *Developer* from `https://www.wunderground.com/weather/api/`
3. In *current_conditions.rb* on your local machine replace `ENV['SECRET_KEY']` with your API key from Wunderground.
4. In your terminal, navigate to the file and run `ruby weatherreport.rb` and enter a 5 digit zip code.
* Note that if the zip code does not have a city associated with it, the program will not work.
5. To look up another zip code, rerun the program.

###Variables used in the Weather Report
The Weather Report delivered in `weatherreport.rb` is for the current conditions in a zipcode.
* Zipcode (String)
* City (String)
* State (String Abbreviation)
* Weather (String of the current weather condition)
* Temp (Float of Degrees Fahrenheit)
* Feelslike (String of Degrees Fahrenheit)
* Wind (Float of Wind MPH)
* wd (String of Wind Direction)
* ws (String describing Wind)
* uv (String of UV Index)
