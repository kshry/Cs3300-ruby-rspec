# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  #guard clauses
  return 0 if arr.empty? #return 0 for an empty array
  return arr[0] if arr.length == 1 #return the value for a 1 valued array
  
  arr.sort!.reverse! #array is now sorted in descending order

  arr[0] + arr[1] #this is an implicit return      
end

def sum_to_n? arr, n
  return false unless arr.length > 1 #return false for empty and 1 element arrays

  sums = [] 
  #gets all possible 2 element combinations of arr, sums them, puts in sums
  arr.combination(2) {|combination| sums.push(combination.sum)} 

  return sums.include?(n)
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  #Do we start with a letter AND don't start with a vowel?
  #using implicit return: ruby returns last evaluated value if not explicit return
  s.start_with?(/[a-zA-Z]/) && s.start_with?(/[^aeiouAEIOU]/) 
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
  #creates getters and setters based on the tokens for the variables
  attr_accessor :isbn, :price 

  def initialize(isbn, price)
    #one line if and unless to act as our guard clause
    raise ArgumentError.new if isbn.empty?
    raise ArgumentError.new unless price > 0

    #here, we didn't raise the errors, so we can set the values
    @isbn = isbn
    @price = price
  end

  def price_as_string
    #some freaky ruby string interpolation
    #basically, formats the instance variable price, then interpolates
    "$#{'%.2f' % @price}"
  end

end
