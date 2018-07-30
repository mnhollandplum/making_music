require 'pry'
class MusicClass
    attr_reader :student_count,
                :students
  def initialize
    @student_count = 0
    @students = []
  end

  def add_student(student)
    students << student
    @student_count = students.count
  end

  def student_list
    student_list = nil
    @students.map do |student|
      student_list = student.name
    end.join(", ")
  end

  def average_age
    ages = []
    @students.map do |student|
      ages << student.age
    end.flatten

    ages.sum / @student_count
  end
end
