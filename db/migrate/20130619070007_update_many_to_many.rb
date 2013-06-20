require_relative '../config'
require_relative '../../app/models/student'
require_relative '../../app/models/teacher'
require_relative '../../app/models/studentsteacher'


Student.all.each do |student|
  rand(5).times do
    student.teachers << Teacher.all.sample
  end
  student.save
end
