require "./task2/person"
require 'test/unit'

class PersonTest < Test::Unit::TestCase
  def setup
    @person = Person.new('John', 'Doe', 'AA1234567890', '1990-01-01')
  end

  def test_valid_first_name
    assert_equal('John', @person.first_name)
  end

  def test_valid_last_name
    assert_equal('Doe', @person.last_name)
  end

  def test_valid_inn
    assert_equal('AA1234567890', @person.inn)
  end

  def test_valid_birth_date
    assert_equal('1990-01-01', @person.birth_date)
  end

  def test_invalid_first_name
    assert_raise(ArgumentError) { @person.first_name = 'J0hn' }
  end

  def test_invalid_last_name
    assert_raise(ArgumentError) { @person.last_name = 'Doe1' }
  end

  def test_invalid_inn
    assert_raise(ArgumentError) { @person.inn = '123456789' }
  end

  def test_invalid_birth_date
    assert_raise(ArgumentError) { @person.birth_date = '2000/01/01' }
  end
end
