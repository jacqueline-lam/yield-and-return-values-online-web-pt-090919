require 'pry'

def hello(array)
  i = 0
  collection = [] #set varaible collection = empty array 
  
  while i < array.length
    collection << yield(array[i]) #push return value of using yeild(array[i]) into colelction array
    i += 1
  end

  collection
end



hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
# Hi, Tim
# Hi, Tom
# Hi, Jim
# => nil
# return value of while loop is always nil — 
# if we want our method to return something else, we have to tell it to do so 

# We can capture the return value of the code that is executed when yield passes a value to a block
# Calling yield(some_argument) will give us return value of execution of blcok with that argument
# we can capture those return values
