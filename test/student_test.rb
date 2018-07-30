require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/student'
require './lib/instrument'

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
    instrument = Instrument.new("Piano")
    student.assign_instrument(instrument)

    assert_equal "Piano", student.instrument
  end

  def test_can_assign_instruments_to_multiple_students
    instrument_1 = Instrument.new("Piano")
    instrument_2 = Instrument.new("Trumpet")
    instrument_3 = Instrument.new("Tambourine")
    student_1 = Student.new("Anna", 12)
    student_2 = Student.new("Charlie", 14)
    student_3 = Student.new("Jeff", 13)
    student_1.assign_instrument(instrument_1)
    student_2.assign_instrument(instrument_2)
    student_3.assign_instrument(instrument_3)
    assert_equal "Piano", student_1.instrument
    assert_equal "Trumpet", student_2.instrument
    assert_equal "Tambourine", student_3.instrument

  end

end
