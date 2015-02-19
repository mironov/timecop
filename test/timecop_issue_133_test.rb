require File.join(File.dirname(__FILE__), "test_helper")
require File.join(File.dirname(__FILE__), '..', 'lib', 'timecop')

class TestTimecop < Minitest::Unit::TestCase
  def setup
    t = Time.local(2008, 9, 1, 10, 5, 0) # monday
    Timecop.travel(t)
  end

  def teardown
    Timecop.return
  end

  # Test for Date
  def test_date_parse_sunday_after_travel
    assert_equal Date.parse("2008-08-31"), Date.parse('Sunday')
  end

  def test_date_parse_monday_after_travel
    assert_equal Date.parse("2008-09-01"), Date.parse('Monday')  
  end

  def test_date_parse_tuesday_after_travel
    assert_equal Date.parse("2008-09-02"), Date.parse('Tuesday')
  end

  def test_date_parse_wednesday_after_travel
    assert_equal Date.parse("2008-09-03"), Date.parse('Wednesday')
  end

  def test_date_parse_thursday_after_travel
    assert_equal Date.parse("2008-09-04"), Date.parse('Thursday')
  end

  def test_date_parse_friday_after_travel
    assert_equal Date.parse("2008-09-05"), Date.parse('Friday')
  end

  def test_date_parse_saturday_after_travel
    assert_equal Date.parse("2008-09-06"), Date.parse('Saturday')
  end


  # Tests for DateTime
  def test_date_time_parse_sunday_after_travel
    assert_equal DateTime.parse("2008-08-31"), DateTime.parse('Sunday')
  end

  def test_date_time_parse_monday_after_travel
    assert_equal DateTime.parse("2008-09-01"), DateTime.parse('Monday')  
  end

  def test_date_time_parse_tuesday_after_travel
    assert_equal DateTime.parse("2008-09-02"), DateTime.parse('Tuesday')
  end

  def test_date_time_parse_wednesday_after_travel
    assert_equal DateTime.parse("2008-09-03"), DateTime.parse('Wednesday')
  end

  def test_date_time_parse_thursday_after_travel
    assert_equal DateTime.parse("2008-09-04"), DateTime.parse('Thursday')
  end

  def test_date_time_parse_friday_after_travel
    assert_equal DateTime.parse("2008-09-05"), DateTime.parse('Friday')
  end

  def test_date_time_parse_saturday_after_travel
    assert_equal DateTime.parse("2008-09-06"), DateTime.parse('Saturday')
  end
end
