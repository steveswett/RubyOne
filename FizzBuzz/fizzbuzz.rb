require 'json'

class FizzBuzz
  
  
  def initialize(max)
    @max = max
  end
  
  def multiple_of_3?(number)
    number % 3 == 0
  end
  
  
  def multiple_of_5?(number)
    number % 5 == 0
  end
  
  
  def multiple_of_3_and_5?(number)
    multiple_of_3?(number) && multiple_of_5?(number)
  end
  
  
  def get_data_as_array()
    
    # map will automatically gather a structure of return values within the loop into an array
    
    (1..@max).map do |x|
      
      if multiple_of_3_and_5?(x)
        'FizzBuzz'
      elsif multiple_of_3?(x)
        'Fizz'
      elsif multiple_of_5?(x)
        'Buzz'
      else
        x
      end
      
    end
    
  end
  
  
#  def get_data_as_array(max)
#    
#    output = Array.new
#  
#    (1..max).each do |x|
#      
#      if multiple_of_3_and_5?(x)
#        output.push 'FizzBuzz'
#      elsif multiple_of_3?(x)
#        output.push 'Fizz'
#      elsif multiple_of_5?(x)
#        output.push 'Buzz'
#      else
#        output.push x
#      end
#      
#    end
#    
#    output
#    
#  end
  
  
  def get_data_as_text()
    get_data_as_array().join(", ")
  end
  
  
  def get_data_as_html()
    array_data = get_data_as_array()
    
    output = '<ul>'
    
    array_data.each do |word|
      output << "<li>#{word}</li>" 
    end
    
    output << '/ul>'
    
  end
  
  
  def get_data_as_json()
    array_data = get_data_as_array()
    
    use_to_json = false
    
    if (use_to_json)
      array_data.to_json
    else
      
      # Not sure what our goal for JSON output will be.  Here is one possibility:
      
      # [ { "number":1, "word":"1" }, { "number":2, "word":"2" }, { "number":3, "word":"Fizz" } ]
      mapsArray = Array.new
      x = 0
          
      array_data.each do |word|
        x += 1
        map = { :number => x, :word => word }
        mapsArray.push(map) 
      end
        
      JSON(mapsArray)
    end
  end
  
  
end
