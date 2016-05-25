

require_relative 'process_weather_data'
require 'test/unit'


class WeatherDataTests < Test::Unit::TestCase
    def test_data1
        p_w_d = ProcessWeatherData.new(File.dirname(__FILE__) + '/test-data1.dat')
        assert_equal(89, p_w_d.table[1][1])
        assert_equal([1,2], p_w_d.get_smallest_spread_days('col0','col1','day'))
    end
    def test_data2
        p_w_d = ProcessWeatherData.new(File.dirname(__FILE__) + '/test_data2.dat')
        assert_equal(1, p_w_d.table['Dy'][0])
        assert_equal([2], p_w_d.get_smallest_spread_days('MxT','MnT','Dy'))
    end
    def test_weather
        p_w_d = ProcessWeatherData.new(File.dirname(__FILE__) + '/weather.dat')
        assert_equal([14], p_w_d.get_smallest_spread_days('MxT','MnT','Dy'))
    end
end


class SoccerTests < Test::Unit::TestCase
    def test_soccer
        p_soccer_d = ProcessWeatherData.new(File.dirname(__FILE__) + '/football.dat')
        assert_equal(["Aston_Villa"], p_soccer_d.get_smallest_spread_days('F','A','Team'))
    end

end
