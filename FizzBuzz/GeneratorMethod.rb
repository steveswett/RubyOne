def multiple_of_3?(number)
  number % 3 == 0
end


def multiple_of_5?(number)
  number % 5 == 0
end


def multiple_of_3_and_5?(number)
  multiple_of_3?(number) && multiple_of_5?(number)
end


def get_fizz_buzz_data(max)
  
  output = Array.new

  (1..max).each do |x|
    
    if multiple_of_3_and_5?(x)
      output.push "FizzBuzz"
    elsif multiple_of_3?(x)
      output.push "Fizz"
    elsif multiple_of_5?(x)
      output.push "Buzz"
    else
      output.push x
    end
    
  end
  
  output
  
end


results = get_fizz_buzz_data(30)
puts(results)
