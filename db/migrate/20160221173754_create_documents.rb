class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :value
      t.references :document_type, index: true, foreign_key: true
      t.string :dispatcher_entity
      t.date :dispatcher_date

      t.timestamps null: false
    end
  end
end
