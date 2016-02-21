class CreateInsurers < ActiveRecord::Migration
  def change
    create_table :insurers do |t|
      t.string :name
      t.string :branch_office
      t.decimal :standard_commission

      t.timestamps null: false
    end
  end
end
