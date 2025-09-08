class Reminder < ApplicationRecord
  belongs_to :reminder_type
  belongs_to :remindable, polymorphic: true
end
