class CreateProductives < ActiveRecord::Migration
  def change
    create_table :productives do |t|
      t.string :name
      t.string :short_name
      t.references :gender, index: true, foreign_key: true
      t.string :cpf
      t.string :email
      t.date :birth
      t.boolean :status

      t.timestamps null: false
    end
  end
end
