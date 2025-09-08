class Appointment < ApplicationRecord
  belongs_to :firm

  has_many :reminders, as: :remindable, dependent: :destroy
end
