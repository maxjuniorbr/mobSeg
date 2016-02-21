class CreateOccupations < ActiveRecord::Migration
  def change
    create_table :occupations do |t|
      t.string :value

      t.timestamps null: false
    end
  end
end
