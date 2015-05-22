require 'byebug'
require 'httparty'

class TenDayForecast
attr_reader :data

  def initialize(location = 27514)
    @data = HTTParty.get("http://api.wunderground.com/api/#{ENV['WU_KEY']}/forecast10day/q/#{location}.json")
  end

  def display_forecast
    return_string = "10 Day Forecast\n"
    @data["forecast"]["txt_forecast"]["forecastday"].each do |period|
       return_string += "#{period["title"]}: #{period["fcttext"]}\n"
    end
    return_string +="\n"
  end

end
