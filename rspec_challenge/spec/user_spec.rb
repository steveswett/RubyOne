require 'spec_helper'
require_relative '../lib/user'

# Note: To get RubyMine to output info about each test, pass the following option: "--format doc" (via run
#       configurations).  In older versions of rspec, you would pass "--format nested"


describe User do

  describe "#greeting" do
    it "returns correct hello greeting" do
      user = User.new
      expect(user.greet()).to eq 'Hello, name of new user!'
    end
  end

end