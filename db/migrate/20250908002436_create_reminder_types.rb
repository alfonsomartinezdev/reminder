class CreateReminderTypes < ActiveRecord::Migration[8.0]
  def change
    create_table :reminder_types do |t|
      t.string :name
      t.string :remindable_type
      t.text :message_template
      t.integer :default_days_before

      t.timestamps
    end
  end
end
