class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #validates :role, inclusion: { in: %w(student, admin, teacher), message:"Not a valid role" }

  after_initialize :set_default_student, :if => :new_record?

  def set_default_student
    self.role ||= "student"
  end


end
