require 'byebug'
require 'httparty'

class RiseAndSetTimes
attr_reader :data

  def initialize(location = 27514)
    @data = HTTParty.get("http://api.wunderground.com/api/#{ENV['WU_KEY']}/astronomy/q/#{location}.json")
  end

  def display_times
    return "Sunrise: #{data["sun_phase"]["sunrise"]["hour"]}:#{data["sun_phase"]["sunrise"]["minute"]}\nSunset: #{data["sun_phase"]["sunset"]["hour"]}:#{data["sun_phase"]["sunset"]["minute"]}\n\n".to_s
  end

end
