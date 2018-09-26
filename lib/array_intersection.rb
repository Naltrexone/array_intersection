# Creates a new array to return the intersection of the two input arrays

# Method 1
# def intersection(array1, array2)
#   new_array = array1 & array2
#   return new_array
# end

# Method 2
# Time complexity O(n * m) where n and m are lengths of the arrays
# Space complexity is O(1). The new array does occupy space, but the space
# allocated in memory is constant, irrespective of the size of the array.

def intersection(array1, array2)
  new_array = []
  return new_array if array1 == nil || array2 == nil

  (array1.length).times do |count|
    (array2.length).times do |index|
      if array1[count] == array2[index]
        new_array << array1[count]
      end
    end
  end
  return new_array
end

# Method 3
# If a common element is found, it can be deleted.
# This will help reduce the time taken slightly as there are less elements to
# iterate through in case common elements are found.
