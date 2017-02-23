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


#Add the previous two numbers
def fib(num)

  new_array = []

  count = 1
  num1 = 0
  num2 = 1
  sum1 = 0
  new_array = [0,1]

  if num == 0
      new_array = [0]
      #p "hi"
  count += 1
  else

    while new_array.length < num

      if num == 1
        new_array = [0,1]
        #p num2
      else
        sum1 = num1 + num2
        new_array.push(sum1)
        num1 = num2
        num2 = sum1
        #p new_array
      end

    count += 1

    end
  end

  #p new_array[-1] == 218922995834555169026
  #p new_array.length
  #p new_array.index(218922995834555169026)
  return new_array
end

p fib(100)
