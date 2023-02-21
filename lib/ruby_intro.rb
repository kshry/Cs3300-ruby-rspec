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

  #gets all possible 2 element combinations of arr
  arr.combination(2) {|combination| 
  #for efficiency, return true if a combination's sum is n
  #this is calculated as each combination is built
  return true if (combination.sum == n)} 

  #here, no combination above returned true, so we return false
  return false
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
  return false if s.empty? #don't want to work with an empty string
  #this abuses that anything other than nil and false are truthy
  #if slice can match any thing that's not a 0 or 1, it returns a string,
  #which will be true. Otherwise (ie a string of all 0s and 1s), it returns nil
  return false if s.slice(/[^01]/)

  #convert the binary number to an int, mod 4, ask if that's 0
  s.to_i(2) % 4 == 0

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
    #The @ designates the instant variable
    @isbn = isbn
    @price = price
  end

  #methods default as public in Ruby
  def price_as_string
    #some freaky ruby string interpolation
    #basically, formats the instance variable price, then interpolates
    "$#{'%.2f' % @price}"
  end

end
