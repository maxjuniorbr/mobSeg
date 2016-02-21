class CreateMetiers < ActiveRecord::Migration
  def change
    create_table :metiers do |t|
      t.string :value

      t.timestamps null: false
    end
  end
end
