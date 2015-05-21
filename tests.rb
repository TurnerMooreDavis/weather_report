require 'minitest/autorun'
require 'minitest/pride'
require './local_weather_data.rb'
require './ten_day_forecast.rb'
require './rise_and_set_times.rb'
require './weather_alerts.rb'
require './active_hurricanes.rb'

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
  # def test_can_return_weather_alerts
  #     alerts = WeatherAlerts.new(27278)
  #     assert_equal HTTParty::Response, alerts.data.class
  #     assert_equal String, alerts.display_alerts.class
  # end
  def test_can_return_active_hurricanes
    hurricanes = ActiveHurricanes.new(27278)
    assert_equal HTTParty::Response, hurricanes.data.class
    assert_equal String, hurricanes.display_storms.class
  end

end
