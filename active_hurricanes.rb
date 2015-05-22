require 'byebug'
require 'httparty'

class ActiveHurricanes
attr_reader :data

  def initialize(location = 27514)
    @data = HTTParty.get("http://api.wunderground.com/api/#{ENV['WU_KEY']}/currenthurricane/q/#{location}.json")
  end

  def display_storms
    return_string = "Active Hurricanes:\n"
    if data["currenthurricane"].length > 0
      data["currenthurricane"].each do |hurricane|
        return_string += "#{hurricane["stormInfo"]["stormName_Nice"]} is a catagory #{hurricane["Current"]["SaffirSimpsonCategory"]} storm located at latitude: #{hurricane["Current"]["lat"]} and longitude:#{hurricane["Current"]["lon"]}.  Go to #{hurricane["stormInfo"]["wuiurl"]} fore more information.\n"
      end
    else
      return_string += "No active hurricanes\n"
    end
    return return_string += "\n"
  end

end
