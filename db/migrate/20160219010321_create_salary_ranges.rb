class CreateSalaryRanges < ActiveRecord::Migration
  def change
    create_table :salary_ranges do |t|
      t.string :value

      t.timestamps null: false
    end
  end
end
