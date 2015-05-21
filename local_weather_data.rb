require 'byebug'
require 'httparty'

class LocalWeatherData
attr_reader :data

  def initialize(zip = 27514)
    @data = HTTParty.get("http://api.wunderground.com/api/#{ENV['WU_KEY']}/conditions/q/#{zip}.json")
  end

  def display_weather
    return ("Local Weather\nIn #{@data["current_observation"]["observation_location"]["full"]} it is #{@data["current_observation"]["temperature_string"]} with wind #{@data["current_observation"]["wind_string"]}, and a relative humidity of #{@data["current_observation"]["relative_humidity"]} (#{@data["current_observation"]["observation_time"]})\n\n")
  end

end
