require_relative '../config'
require_relative '../../app/models/student'
require_relative '../../app/models/teacher'

class UpdateStudentsTeachers < ActiveRecord::Migration
  def up
    change_table :students do |field|
      field.integer :teacher_id
    end   

    @teachers = Teacher.all
    Student.all.each do |student| 
      student.teacher = @teachers.sample
      student.save
    end
  end
end
