require 'minitest/autorun'
require 'minitest/pride'
require './lib/student'

class StudentTest < Minitest::Test

  def test_student_exists
    student = Student.new("Anna", "12")
    assert_instance_of Student, student
  end

  def test_student_has_name
    student = Student.new("Anna", "12")
    expected = "Anna"
    assert_equal expected, student.name
  end

  def test_student_has_age
    student = Student.new("Anna", "12")
    expected = "12"
    assert_equal expected, student.age
  end

  def test_student_is_enrolled
    student = Student.new("Anna", "12")
    expected = true
    assert_equal expected, student.enrolled?
  end

  def test_student_starts_without_instrument
    student = Student.new("Anna", "12")
    expected = nil
    assert_equal expected, student.instrument
  end

  def test_can_assign_instrument_to_student
    student = Student.new("Anna", "12")
    student.instrument
    instrument = Instrument.new("Piano")
    student.assign_instrument(instrument)

    assert_equal "Piano", student.instrument
  end



end
