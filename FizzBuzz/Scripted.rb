def multiple_of_3?(number)
  number % 3 == 0
end


def multiple_of_5?(number)
  number % 5 == 0
end


def multiple_of_3_and_5?(number)
  multiple_of_3?(number) && multiple_of_5?(number)
end


  (1..15).each do |x|
    
    if multiple_of_3_and_5?(x)
      puts "FizzBuzz"
    elsif multiple_of_3?(x)
      puts "Fizz"
    elsif multiple_of_5?(x)
      puts "Buzz"
    else
      puts x
    end
    
  end
