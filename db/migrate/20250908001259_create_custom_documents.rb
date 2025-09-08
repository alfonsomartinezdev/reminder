class CreateCustomDocuments < ActiveRecord::Migration[8.0]
  def change
    create_table :custom_documents do |t|
      t.string :title
      t.string :document_type

      t.timestamps
    end
  end
end
