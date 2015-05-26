require './local_weather_data.rb'
require './ten_day_forecast.rb'
require './rise_and_set_times.rb'
require './weather_alerts.rb'
require './active_hurricanes.rb'

puts "Please enter a location code or city and state to recieve your local weather report!"
input = gets.chomp
location = ""
def parse_input(input)
  if !input.match(/[\d]/) && input[-2..-1].match(/[a-zA-Z]/) && input[-3].match(/(,|\s)/)
    split = input.gsub(/[\,\.]/," ").split
    location = "#{split[-1].upcase}/#{split[0..-2].join("_")}"
  elsif input.length == 5 && !input.match(/[\D]/)
    location = input
  else
    return false
  end
  return location
end

def puts_report(location)
  while location == false
    puts "Thats not a location...C'mon! Lets try this again"
    new_input = gets.chomp
    location = parse_input(new_input)
  end
  puts ""
  begin
    puts LocalWeatherData.new(location).display_weather
    puts TenDayForecast.new(location).display_forecast
    puts RiseAndSetTimes.new(location).display_times
    puts WeatherAlerts.new(location).display_alerts
    puts ActiveHurricanes.new.display_storms
  rescue
    puts "There was an error...Lets try this again"
    another_input = gets.chomp
    puts_report(parse_input(another_input))
  end
end

puts_report(parse_input(input))
