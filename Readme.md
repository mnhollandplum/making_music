## Mid Module Diagnostic Starter Kit

You can run all tests by typing in `rake test`

Iteration 1 (tests provided)

instrument = Instrument.new("Piano")
# => <#Instrument:34876342857>
instrument.type
# => "Piano"
instrument.broken?
# => False

Iteration 2

instrument = Instrument.new("Piano")
# => <#Instrument:34876342857>
student = Student.new("Anna", 12)
# => <#Student:2348712342134>
student.name
# => "Anna"
student.age
# => 12
student.enrolled?
# => true
student.instrument
# => nil
student.assign_instrument(instrument)
# => <#Instrument:34876342857>
student.instrument
# => <#Instrument:34876342857>

Iteration 3

instrument_1 = Instrument.new("Piano")
# => <#Instrument:34876342857>
instrument_2 = Instrument.new("Trumpet")
# => <#Instrument:42131231231>
instrument_3 = Instrument.new("Tambourine")
# => <#Instrument:29873422857>
student_1 = Student.new("Anna", 12)
# => <#Student:2348712342134>
student_2 = Student.new("Charlie", 14)
# => <#Student:6578712342134>
student_3 = Student.new("Jeff", 13)
# => <#Student:9878712342134>
student_1.assign_instrument(instrument_1)
# => <#Instrument:34876342857>
student_2.assign_instrument(instrument_2)
# => <#Instrument:42131231231>
student_3.assign_instrument(instrument_3)
# => <#Instrument:29873422857>
music_class = MusicClass.new
# => <#MusicClass:9878712342134>
music_class.student_count
# => 0
music_class.add_student(student_1)
# => <#Student:2348712342134>
music_class.add_student(student_2)
# => <#Student:6578712342134>
music_class.add_student(student_3)
# => <#Student:9878712342134>
music_class.student_count
# => 3
music_class.student_list
# => "Anna, Charlie, Jeff"
music_class.average_age
# => 13
