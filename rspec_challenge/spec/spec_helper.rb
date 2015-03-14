RSpec.configure do |config|

  # Begin: to configure "should" syntax:
=begin
  config.expect_with(:rspec) do |c|
    c.syntax = :should
  end

  config.mock_with :rspec do |c|
    c.syntax = :should
  end
  # End: to configure "should" syntax:
=end

  # Begin: enable BOTH syntaxes:
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
  # End: enable BOTH syntaxes:

end
