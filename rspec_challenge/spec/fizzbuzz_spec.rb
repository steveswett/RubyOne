require 'spec_helper'
require_relative '../lib/fizz_buzz'


describe FizzBuzz do


  def test_output_as_text(fizzbuzz_max, expected_output)
    fizzbuzz = FizzBuzz.new(fizzbuzz_max)
    expect(fizzbuzz.as_text()).to eq expected_output
  end


  def test_output_as_json(fizzbuzz_max, expected_output)
    fizzbuzz = FizzBuzz.new(fizzbuzz_max)
    expect(fizzbuzz.as_json()).to eq expected_output
  end


  describe 'Gets output as text' do

    expectations = {
        9 => '1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz',
        10 => '1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz',
        11 => '1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11',
        15 => '1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz'
    }

    expectations.each do |key, value|
      it "Gets text as CSV for #{key}" do
        test_output_as_text(key, value)
      end
    end

  end


  describe 'Gets output as JSON' do

    expectations = {
        3 => '[1,2,"Fizz"]',
        5 => '[1,2,"Fizz",4,"Buzz"]',
        11 => '[1,2,"Fizz",4,"Buzz","Fizz",7,8,"Fizz","Buzz",11]',
        15 => '[1,2,"Fizz",4,"Buzz","Fizz",7,8,"Fizz","Buzz",11,"Fizz",13,14,"FizzBuzz"]'
    }

    expectations.each do |key, value|
      it "Gets text as JSON for #{key}" do
        test_output_as_json(key, value)
      end
    end

  end

end