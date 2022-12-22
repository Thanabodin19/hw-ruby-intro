# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
  # YOUR CODE HERE
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else 
    arr.sort!
    sum = arr[arr.length-2] + arr[arr.length-1]
    return sum
  end
  # YOUR CODE HERE
end

def sum_to_n? arr, n
  if arr.length < 2
    return false
  else
    arr.each do |x|
      arr.each do |y|
        if x!=y
          if x+y == n
            return true
          end
        end 
      end
    end
    return false
  end
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  return "Hello, #{name}"
  # YOUR CODE HERE
end

def starts_with_consonant? s
  if s.length == 0
    return false
  else
    n = s[0].downcase.count '#aeiou'
    if  n >= 1
      return false
    else
      return true
    end
  end
  # YOUR CODE HERE
end

def binary_multiple_of_4? s

  if s.length == 0
    return false
  else
    if s.count("a-zA-Z") > 0
      return false
    else
      str = s.delete(" ")
      if str.to_i % 4 == 0
        return true
      else
        return false
      end
    end
  end
  # YOUR CODE HERE
end

# Part 3

class BookInStock
  attr_writer :isbn ,:price
  def initialize(isbn,price)
    if isbn == "" || price < 1
      raise ArgumentError 
    end
    @isbn = isbn
    @price = price
  end

  def isbn
    @isbn
  end

  def price
    @price
  end

  def price_as_string
    s = "$%.2f" % @price.to_s
    return s
  end
# YOUR CODE HERE
end
