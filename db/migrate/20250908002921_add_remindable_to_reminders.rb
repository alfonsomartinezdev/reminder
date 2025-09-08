class AddRemindableToReminders < ActiveRecord::Migration[8.0]
  def change
    add_index :reminders, [:remindable_type, :remindable_id]
  end
end
