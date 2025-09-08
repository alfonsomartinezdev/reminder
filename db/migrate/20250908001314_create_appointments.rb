class CreateAppointments < ActiveRecord::Migration[8.0]
  def change
    create_table :appointments do |t|
      t.string :client_name
      t.datetime :scheduled_at

      t.timestamps
    end
  end
end
