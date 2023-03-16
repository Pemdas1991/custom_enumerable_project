array = Array.new ([1, 1, 2, 3, 5, 8, 13, 21, 34])



module Enumerable
  # Your code goes here
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method



class Array
  # Define my_each here

  def my_each()
    return self unless block_given?
    
    new_array = []
    
    for thing in self
      new_array.push yield thing
    end

  end

  def my_each_with_index(&block)
    return self unless block_given? 
    
    new_array = []
    index = 0
    
    for thing in self
      element = self[index]
      new_array.push yield [element, index]
      index += 1
    end

  end

  def my_select
    return self unless block_given? 
    
    new_array = []

    for element in self
      if yield element
        new_array.push element
      end
    end
    new_array

  end

  def my_all?
    return self unless block_given? 
    
    new_array = []

    for element in self
      if yield element
        new_array.push element
      end
    end

    if new_array.length == self.length
      return true
    end
    
    false

  end

  def my_any?
    return self unless block_given? 
    
    new_array = []

    for element in self
      if yield element
        new_array.push element
      end
    end

    if new_array.length > 1
      return true
    end
    
    false
  end

  def my_none?
    return self unless block_given? 
    
    new_array = []

    for element in self
      if yield element
        new_array.push element
      end
    end

    if new_array.length == 0
      return true
    end
    
    false
  end

  def my_count
    return self.length unless block_given? 
    
    new_array = []

    for element in self
      if yield element
        new_array.push element
      end
    end

    new_array.length
  end

  def my_map
    return self unless block_given? 
    
    new_array = []

    for element in self
        new_array.push yield element
    end

    new_array
  end

  def my_inject(initial_value)
    return self unless block_given? 
    
    sum = initial_value

    for element in self
      sum = yield [sum, element]
    end

    sum

  end

end


