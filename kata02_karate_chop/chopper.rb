class Chopper
    def chop(x_number, array)
        if array.empty?
            -1
        elsif x_number < array.first or x_number > array.last
            -1
        end

        recurse(0, array.length - 1, x_number, array)
    end

    def recurse(low, high, x_number, array)
        middle = (low + high)/2
        if array[middle] == x_number
            middle
        elsif low > high
            -1
        elsif array[middle] < x_number
            recurse(middle + 1, high, x_number, array)
        elsif array[middle] > x_number
            recurse(low, middle - 1, x_number, array)
        else
            -1
        end
    end
end
