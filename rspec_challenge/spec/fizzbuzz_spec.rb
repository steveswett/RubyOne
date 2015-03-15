require 'spec_helper'
require_relative '../lib/fizz_buzz'


describe 'FizzBuzz' do

  describe 'Text output' do
    it "Gives expected CSV for 9" do
      fizzbuzz = FizzBuzz.new(9)
      expect(fizzbuzz.as_text()).to eq '1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz'
    end

    it "Gives expected CSV for 10" do
      fizzbuzz = FizzBuzz.new(10)
      expect(fizzbuzz.as_text()).to eq '1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz'
    end

    it "Gives expected CSV for 11" do
      fizzbuzz = FizzBuzz.new(11)
      expect(fizzbuzz.as_text()).to eq '1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11'
    end

    it "Gives expected CSV for 15" do
      fizzbuzz = FizzBuzz.new(15)
      expect(fizzbuzz.as_text()).to eq '1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz'
    end

  end


  describe 'JSON output' do
    it "Gives expected JSON for 3" do
      fizzbuzz = FizzBuzz.new(3)
      expect(fizzbuzz.as_json).to eq "[1,2,\"Fizz\"]"

      # The following works, if we need to get this detailed.
=begin
      json_str = JSON.generate(fizzbuzz.data)
      expect(fizzbuzz.as_json()).to eq json_str
      json_arr = JSON.parse(json_str)
      expect(json_arr.length).to eq 3
      expect(json_arr[0]).to eq 1
      expect(json_arr[1]).to eq 2
      expect(json_arr[2]).to eq 'Fizz'
=end

    end
  end

end