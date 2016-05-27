class Student < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :phone_number, presence: true
  validates :emergency_contact_name, presence: true
  validates :emergency_contact_phone, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
