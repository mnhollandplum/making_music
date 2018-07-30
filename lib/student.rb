class Student
    attr_reader :name,
                :age,
                :enrolled,
                :instrument

  def initialize(name, age)
    @name = name
    @age = age
    @enrolled = true
    @instruments = nil
  end

  def enrolled?
    @enrolled
  end

  def assign_instrument(instrument)
  @instrument = instrument.type
  end
end
