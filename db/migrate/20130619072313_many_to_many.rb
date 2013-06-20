


class ManyToMany < ActiveRecord::Migration
  Student.all.each do |student|
    rand(5).times do
      student.teachers << Teacher.all.sample
    end
    student.save
  end
end
