require 'byebug'
require 'httparty'

class WeatherAlerts
attr_reader :data

  def initialize(zip = 27514)
    @data = HTTParty.get("http://api.wunderground.com/api/#{ENV['WU_KEY']}/alerts/q/#{zip}.json")
  end

  def display_alerts
    return_string = "Local Alerts:\n"
    if data["alerts"].length > 0
      data["alerts"].each do |alert|
        return_string += "#{alert.to_s}\n"
      end
    else
      return_string += "No local Alerts"
    end
    return return_string.to_s
  end

end
