require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  validates :name, :presence => true
  validates :first_name, :presence => true #:uniqueness => true
  validates :last_name, :presence => true #:uniqueness => true
  validates :email, :uniqueness => true, :format => { :with => /.*@.*\..{2,}/}

  has_many :students_teachers
  has_many :students, :through => :students_teachers

  def name
    first_name + " " + last_name
  end
end
