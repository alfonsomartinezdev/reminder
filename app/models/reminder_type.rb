class ReminderType < ApplicationRecord
  validates :name, presence: true
  validates :remindable_type, presence: true, inclusion: { in: %w[Invoice Appointment CustomDocument] }

  has_many :reminders, dependent: :destroy
end
