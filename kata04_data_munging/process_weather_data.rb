require 'csv'

class ProcessWeatherData
    CSV::Converters[:temps] = lambda do |field|
        field && field =~ /[0-9]{1,}\*/ ? Integer(field[/[0-9]*/]) : field
    end
    def initialize(file_location)
        @table = CSV.read(file_location, skip_blanks: true, col_sep: " ", headers: true, converters: [:numeric,:temps])
    end
    def table
        @table
    end
    def get_smallest_spread_days(col1, col2, daycol)
        min_temp = 999

        days = @table.values_at(col1,col2,daycol)
        min_days = []
        days.each do |day|
            diff = day[0]-day[1]
            if diff.abs < min_temp
                min_temp = diff.abs
                min_days = [day[2]]
            elsif diff.abs == min_temp
                min_days << day[2]
            end
        end
        min_days
    end
end
