require 'minitest/autorun'
require 'minitest/pride'
require 'byebug'
require 'httparty'
require './local_weather_data.rb'
require './ten_day_forecast.rb'

class WeatherReportTest < Minitest::Test

  def test_true
    assert true
  end

  # def test_can_connect_to_api
  #   local_info = LocalWeatherData.new
  #   assert_equal HTTParty::Response, local_info.data.class
  # end
  #
  # def test_can_return_data_on_current_location
  #   local_info = LocalWeatherData.new(27278)
  #   assert_equal "North Carolina", local_info.data["current_observation"]["display_location"]["state_name"]
  # end
  #
  # def test_can_return_from_current_conditions
  #   local_info = LocalWeatherData.new(27278)
  #   assert_equal String, local_info.display_weather.class
  # end
  #
  # def test_can_give_10_day_forecast
  #   forecast = TenDayForecast.new(27514)
  #   assert_equal HTTParty::Response, forecast.data.class
  #   assert_equal String, forecast.display_forecast.class
  # end
  # def test_can_give_sunrise_and_sunset_times
  #   times = RiseAndSetTimes.new(27278)
  #   assert_equal HTTParty::Response, times.data.class
  #   assert_equal String, times.display_times.class
  # end

end
