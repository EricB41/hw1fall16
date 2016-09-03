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
      if indexOfNum2 && indexOfNum2 != currIndex
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  return /\A[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]/ =~ s
end

def binary_multiple_of_4? s
  return /\A[10]+\z/ =~ s && s[s.length - 1] == "0" && s[s.length - 2] == "0"
end

# Part 3

class BookInStock
  def initialize(newISBN, newPrice)
    if newISBN.length == 0 || newPrice <= 0.0
      raise ArgumentError
    end
    @isbn = newISBN
    @price = newPrice
  end
  
  def isbn=(new_isbn)
    if new_isbn.length == 0
      raise ArgumentError
    end
    @isbn = new_isbn
  end
  def isbn
    @isbn
  end
  
  def price=(new_price)
    if new_price <= 0
      raise ArgumentError
    end
    @price = new_price
  end
  def price
    @price
  end
  
  def price_as_string()
    returnPrice = @price.round(2).to_s
    
    if returnPrice =~ /\.\d\d/
      return "$" + returnPrice
    elsif returnPrice =~ /\.\d/
      return "$" + returnPrice + "0"
    else
      return "$" + returnPrice + ".00"
    end
  end

end
