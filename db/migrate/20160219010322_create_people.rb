class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.references :person_type, index: true, foreign_key: true
      t.boolean :accept_email
      t.references :metier, index: true, foreign_key: true
      t.string :contact
      t.date :birth
      t.references :marital_status, index: true, foreign_key: true
      t.references :gender, index: true, foreign_key: true
      t.boolean :politically_exposed_person
      t.string :exposed_name
      t.references :occupation, index: true, foreign_key: true
      t.references :salary_range, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
