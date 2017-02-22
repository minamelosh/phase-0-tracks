#Method that searches for the index of a number in an Array of numbers

def search_array(arr, integer)
  count = 0
  index = 0
  arr.each do |number|
    if number == integer
      index = count
      return index
    else
      index = nil
    end
  count += 1
  end
  return index
end

arr = [42, 89, 23, 1]

p search_array(arr, 1)

p search_array(arr, 24)
