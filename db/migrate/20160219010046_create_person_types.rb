class CreatePersonTypes < ActiveRecord::Migration
  def change
    create_table :person_types do |t|
      t.string :value

      t.timestamps null: false
    end
  end
end
