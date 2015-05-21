require 'byebug'
require 'httparty'

class RiseAndSetTimes
attr_reader :data

  def initialize(zip = 27514)
    @data = HTTParty.get("http://api.wunderground.com/api/#{ENV['WU_KEY']}/astronomy/q/#{zip}.json")
  end

  def display_times
    return "Sunrise: #{data["sun_phase"]["sunrise"]["hour"]}:#{data["sun_phase"]["sunrise"]["minute"]}\nSunset: #{data["sun_phase"]["sunset"]["hour"]}:#{data["sun_phase"]["sunset"]["minute"]}".to_s
  end

end
