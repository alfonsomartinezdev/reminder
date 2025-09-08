class AddFirmToCustomDocuments < ActiveRecord::Migration[8.0]
  def change
    add_reference :custom_documents, :firm, null: false, foreign_key: true
  end
end
