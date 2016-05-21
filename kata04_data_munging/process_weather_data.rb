require 'csv'

class ProcessWeatherData
    def initialize(file_location)
        @table = CSV.read(file_location, col_sep: " ", headers: true, converters: :numeric)
    end
    def table
        @table
    end
    def get_smallest_spread_days(col1, col2, daycol)
    end
end
