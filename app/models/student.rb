require_relative '../../db/config'

class Student < ActiveRecord::Base
  validates :email, :uniqueness => true, :format => { :with => /.*@.*\..{2,}/}
  validates :age, :numericality => { :greater_than => 5 }
  validates :phone, :format => { :with => /\D*\d{3}\D*\d{3}\D*\d{4}/ }

  belongs_to :teacher

  def name
    "#{self.first_name} #{self.last_name}"
  end

  def age
    ((Date.today - self.birthday) / 365).to_i
  end
end
