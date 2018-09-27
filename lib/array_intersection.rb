# Creates a new array to return the intersection of the two input arrays

# Method 1
# def intersection(array1, array2)
#   new_array = array1 & array2
#   return new_array
# end

# Method 2
# Time complexity O(n * m) where n and m are lengths of the arrays
# Space complexity is O(n) or O(m) depending on which array is smaller.
# This is because a new array is being created to stor the common elements
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
