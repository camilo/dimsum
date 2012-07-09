require 'lib/dimsum'
require 'minitest/autorun'

class TestDimsum < MiniTest::Unit::TestCase 
  include Dimsum

  def test_keep_line_in_index__should_keep_any_line_number_less_than_sample_size
    random = MiniTest::Mock.new
    sample_size = 5

    (0..4).each do |k|
      keep, _ = keep_line_in_index(k, sample_size, random)
      assert keep
    end
  end

  def test_keep_line_inde_index__should__keep_line_when_index_is_less_than_random
    expected_index = 2
    random = MiniTest::Mock.new
    current_line = 10
    random.expect(:rand, expected_index, [(0 .. current_line)])
    sample_size = 5

    keep, actual_index = keep_line_in_index(10, sample_size, random)

    assert keep
    assert_equal expected_index, actual_index
  end

  def test_keep_line_inde_index__should_not_keep_line_when_index_is_more_or_equal_than_random
    random_value = 8
    random = MiniTest::Mock.new
    current_line = 10
    random.expect(:rand, random_value, [(0 .. current_line)])
    sample_size = 5
    keep, _ = keep_line_in_index(10, sample_size, random)

    refute keep
  end
end

