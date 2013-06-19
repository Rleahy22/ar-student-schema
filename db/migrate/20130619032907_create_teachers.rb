require_relative '../config'

class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |field|
      field.string :first_name
      field.string :last_name
      field.string :email
      field.string :phone
    end
  end
end
