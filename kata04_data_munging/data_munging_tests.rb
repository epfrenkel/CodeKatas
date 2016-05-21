

require_relative 'process_weather_data'
require 'test/unit'
require 'pp'

class WeatherDataTests < Test::Unit::TestCase
    def test_data_1
        p_w_d = ProcessWeatherData.new(File.dirname(__FILE__) + '/test-data1.dat')
        puts p_w_d.table
        assert_equal(89, p_w_d.table[1][1])

        #assert_equal(p_w_d.get_smallest_spread_days('col0', 'col1', 'num'), [1,2])
    end
end
