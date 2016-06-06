class ChopperRecursive
    # the specification calls for returning -1
    # when the number is not in the array
    NUMBER_NOT_FOUND = -1

    def chop(x_number, array)
        if array.empty? or less_than_or_greater_to(x_number, array)
            NUMBER_NOT_FOUND
        end

        recurse(0, array.length - 1, x_number, array)
    end

    def recurse(low, high, x_number, array)
         middle = middle(low, high)

         if equal_to(array[middle], x_number)
             middle
         elsif greater_than(low, high)
             -1
         elsif less_than(array[middle], x_number)
             recurse(middle + 1, high, x_number, array)
         elsif greater_than(array[middle], x_number)
             recurse(low, middle - 1, x_number, array)
         else
             -1
         end
     end

     private

     def less_than_or_greater_to(number, array)
       number < array.first or number > array.last
     end

     def middle(low, high)
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
