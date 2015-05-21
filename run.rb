require "httparty"

data = HTTParty.get("http://api.wunderground.com/api/#{ENV['WU_KEY']}/conditions/q/NC/Durham.json")

p data
