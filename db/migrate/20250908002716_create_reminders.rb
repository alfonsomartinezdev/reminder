class CreateReminders < ActiveRecord::Migration[8.0]
  def change
    create_table :reminders do |t|
      t.references :reminder_type, null: false, foreign_key: true
      t.datetime :remind_at
      t.text :rendered_message
      t.text :sent_message
      t.boolean :sent
      t.datetime :sent_at

      t.timestamps
    end
  end
end
