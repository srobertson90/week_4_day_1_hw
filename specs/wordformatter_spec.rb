require('minitest/autorun')
require('minitest/rg')
require_relative('../models/wordformatter')

class TestWordFormatter < MiniTest::Test

  def setup
    @test = WordFormatter.new()
  end

  def test_upcase
    assert_equal("TESTING", @test.upcase("testing"))
  end

def test_camelcase
  assert_equal("HelloWorld", @test.camelcase("hello world"))
end


end