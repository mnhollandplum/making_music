require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/music_class'
require './lib/student'
require './lib/instrument'

class MusicClassTest < Minitest::Test
  def test_music_class_exists
    music_class = MusicClass.new
      assert_instance_of MusicClass, music_class
  end

  def test_class_starts_with_no_students
    music_class = MusicClass.new
    assert_equal 0, music_class.student_count
  end

  def test_can_add_students_to_class
    music_class = MusicClass.new
    instrument_1 = Instrument.new("Piano")
    instrument_2 = Instrument.new("Trumpet")
    instrument_3 = Instrument.new("Tambourine")

    student_1 = Student.new("Anna", 12)
    student_2 = Student.new("Charlie", 14)
    student_3 = Student.new("Jeff", 13)

    student_1.assign_instrument(instrument_1)
    student_2.assign_instrument(instrument_2)
    student_3.assign_instrument(instrument_3)

    music_class.add_student(student_1)
    music_class.add_student(student_2)
    music_class.add_student(student_3)

    assert_equal 3, music_class.student_count

  end

  def test_can_list_students
    music_class = MusicClass.new
    instrument_1 = Instrument.new("Piano")
    instrument_2 = Instrument.new("Trumpet")
    instrument_3 = Instrument.new("Tambourine")

    student_1 = Student.new("Anna", 12)
    student_2 = Student.new("Charlie", 14)
    student_3 = Student.new("Jeff", 13)

    student_1.assign_instrument(instrument_1)
    student_2.assign_instrument(instrument_2)
    student_3.assign_instrument(instrument_3)

    music_class.add_student(student_1)
    music_class.add_student(student_2)
    music_class.add_student(student_3)

    assert_equal "Anna, Charlie, Jeff", music_class.student_list
  end

  def test_can_calculate_average_age_of_students
    music_class = MusicClass.new
    instrument_1 = Instrument.new("Piano")
    instrument_2 = Instrument.new("Trumpet")
    instrument_3 = Instrument.new("Tambourine")

    student_1 = Student.new("Anna", 12)
    student_2 = Student.new("Charlie", 14)
    student_3 = Student.new("Jeff", 13)

    student_1.assign_instrument(instrument_1)
    student_2.assign_instrument(instrument_2)
    student_3.assign_instrument(instrument_3)

    music_class.add_student(student_1)
    music_class.add_student(student_2)
    music_class.add_student(student_3)

    assert_equal 13, music_class.average_age
  end

end
