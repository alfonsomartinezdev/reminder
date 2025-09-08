class AddFirmToAppointments < ActiveRecord::Migration[8.0]
  def change
    add_reference :appointments, :firm, null: false, foreign_key: true
  end
end
