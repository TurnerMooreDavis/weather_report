require './local_weather_data.rb'
require './ten_day_forecast.rb'
require './rise_and_set_times.rb'
require './weather_alerts.rb'
require './active_hurricanes.rb'

puts "Please enter a Zip code to recieve your local weather report!"
zip = gets.chomp
while zip.length != 5 || zip.match(/[\D]/)
  puts "Thats not a zip code...C'mon! Lets try this again"
  zip = gets.chomp
end
puts ""
puts LocalWeatherData.new(zip).display_weather
puts TenDayForecast.new(zip).display_forecast
puts RiseAndSetTimes.new(zip).display_times
puts WeatherAlerts.new(zip).display_alerts
puts ActiveHurricanes.new(zip).display_storms
