require 'test/unit'
require 'mocha'

class VersionTest < Test::Unit::TestCase
  def test_ruby_version
    puts `ruby -v`
  end
end

