class ChopperIterative
    # the specification calls for returning -1
    # when the number is not in the array
    NUMBER_NOT_FOUND = -1

    def chop(x_number, array)
        if array.empty?
            NUMBER_NOT_FOUND
        end
        low = 0
        high = array.length-1

        while low <= high
            middle = get_middle(low,high)
            puts middle
            if equal_to(array[middle], x_number)
                return middle
            elsif less_than(array[middle], x_number)
                low = middle + 1
            elsif greater_than(array[middle], x_number)
                high = middle - 1
            else
                return NUMBER_NOT_FOUND
            end
        end

        NUMBER_NOT_FOUND
    end

    def get_middle(low, high)
      (low + high)/2
    end

    def equal_to(first_number, second_number)
        first_number == second_number
    end

    def less_than(first_number, second_number)
      first_number < second_number
    end

    def greater_than(first_number, second_number)
      first_number > second_number
    end
end
