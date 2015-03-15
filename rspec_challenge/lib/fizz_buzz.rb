class Fixnum
  def divisible_by(num)
    self % num == 0
  end
end

class FizzBuzz
  attr_reader :data

  def initialize(limit = 0)
    limit.to_i > 0 ? @data = load(limit.to_i) : @data = []
  end

  def load(limit)
    (1..limit).map do |n|
      fizzbuzzer(n)
    end
  end

  def fizzbuzzer(n)

    # Fixed:

    if n.divisible_by(5) && n.divisible_by(3)
      "FizzBuzz"
    elsif n.divisible_by(3)
      "Fizz"
    elsif n.divisible_by(5)
      "Buzz"
    else
      n
    end

    # Original:
=begin
    if n.divisible_by(5)
      "Buzz"
    elsif n.divisible_by(3)
      "Fizz"
    elsif n.divisible_by(15)
      "FizzBuzz"
    else
      n.to_s
    end

=end
  end

  def as_html
    <<-EOF
<html>
  <body>
    <ul>
      #{@data.map { |d| "<li>#{d}</li>" }.join("\n\t")}
    </ul>
  </body>
</html>
    EOF
  end

  def as_text
    @data.join(", ")
  end
end