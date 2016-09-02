# When done, submit this entire file to the ICON HW1 Dropbox.

# Part 1

def sum arr
  sumOfArr = 0;
  if arr.length > 0
    sumOfArr = arr.inject{|accum, curr| accum + curr};
  end
  return sumOfArr
  
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    temp_arr = arr.sort()
    highNum1 = temp_arr[temp_arr.length - 1]
    highNum2 = temp_arr[temp_arr.length - 2]
    return highNum1 + highNum2
  end
end

def sum_to_n? arr, n
  if arr.length == 0 || arr.length == 1
    return false
  else
    arr.each_index do |currIndex|
      numNeeded = n-arr[currIndex]
      indexOfNum2 = arr.index{|x| x == numNeeded}
      puts indexOfNum2
      if indexOfNum2 && indexOfNum2 != currIndex
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
