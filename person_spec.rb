require("minitest/autorun")
require ("minitest/rg")
require_relative("./person.rb")

class TestStudent < MiniTest::Test

  def test_name()
    student = Student.new("Alex", 3)

    assert_equal("Alex", student.name)
  end

  def test_cohort()
    student = Student.new("Alex", 3)

    assert_equal(3, student.cohort)
  end

  def test_change_name()
    student = Student.new("Alex", 3)

    student.set_name("Alexander")

    assert_equal("Alexander", student.name)
  end

  def test_change_cohort()
      student = Student.new("Alex", 3)

      student.set_cohort(4)

      assert_equal(4, student.cohort)
  end

  def test_talking()
      student = Student.new("Alex", 3)

      student.talking

      assert_equal("I can talk", student.talking)
  end

  def test_favourite_language()
      student = Student.new("Alex", 3)

      student.favourite_language("Ruby")

      assert_equal("I love Ruby!", student.favourite_language("Ruby"))

  end


end
