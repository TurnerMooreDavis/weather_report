require 'byebug'
require 'httparty'

class TenDayForecast
attr_reader :data

  def initialize(zip = 27514)
    @data = HTTParty.get("http://api.wunderground.com/api/#{ENV['WU_KEY']}/forecast10day/q/#{zip}.json")
  end

  def display_forecast
    return_string = "10 day forecast\n\n"
    @data["forecast"]["txt_forecast"]["forecastday"].each do |period|
       return_string += "#{period["title"]}: #{period["fcttext"]}\n\n"
    end
    return_string.to_s
  end

end
