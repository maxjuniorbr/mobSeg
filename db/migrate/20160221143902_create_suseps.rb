class CreateSuseps < ActiveRecord::Migration
  def change
    create_table :suseps do |t|
      t.references :insurer, index: true, foreign_key: true
      t.references :person, index: true, foreign_key: true
      t.string :value

      t.timestamps null: false
    end
  end
end
