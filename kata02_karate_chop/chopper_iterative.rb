class ChopperIterative
    def chop(x_number, array)
        if array.empty?
            -1
        end
        low = 0
        high = array.length-1

        while low <= high
            middle = (low + high)/2
            if array[middle] == x_number
                return middle
            elsif array[middle] < x_number
                low = middle + 1
            elsif array[middle] > x_number
                high = middle - 1
            else
                return -1
            end
        end
        -1
    end
end
