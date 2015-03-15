require 'spec_helper'
require_relative '../lib/fizz_buzz'


describe 'FizzBuzz' do

  describe 'Number results' do
    it "returns correct values for 9" do
      fizzbuzz = FizzBuzz.new(9)
      expect(fizzbuzz.as_text()).to eq '1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz'
    end

    it "returns correct values for 10" do
      fizzbuzz = FizzBuzz.new(10)
      expect(fizzbuzz.as_text()).to eq '1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz'
    end

    it "returns correct values for 11" do
      fizzbuzz = FizzBuzz.new(11)
      expect(fizzbuzz.as_text()).to eq '1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11'
    end

    # This fails -- but that's OK.  There's a bug in the West MI program that needs to be fixed.  The bug was
    # probably intentional.

    it "returns correct values for 15" do
      fizzbuzz = FizzBuzz.new(15)
      expect(fizzbuzz.as_text()).to eq '1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz'
    end

  end

end