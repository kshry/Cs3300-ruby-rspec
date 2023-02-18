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
  # YOUR CODE HERE
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
