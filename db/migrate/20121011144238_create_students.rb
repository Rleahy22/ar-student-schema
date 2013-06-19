require_relative '../config'

class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |field|
      field.string :first_name, :null => false
      field.string :last_name, :null => false
      field.string :gender 
      field.date :birthday 
      field.string :email
      field.string :phone 
    end   
  end
end
