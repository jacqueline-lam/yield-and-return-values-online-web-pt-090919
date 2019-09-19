require 'pry'

def hello(array)
  i = 0
  while i < array.length
    yield(array[i])
    i += 1
  end
end

binding pry

hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
# Hi, Tim
# Hi, Tom
# Hi, Jim
# => nil
# return value of while loop is always nil — 
# if we want our method to return something else, we have to tell it to do so 

#We can capture the return value of the code that is executed when yield passes a value to a block.