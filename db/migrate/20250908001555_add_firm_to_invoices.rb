class AddFirmToInvoices < ActiveRecord::Migration[8.0]
  def change
    add_reference :invoices, :firm, null: false, foreign_key: true
  end
end
