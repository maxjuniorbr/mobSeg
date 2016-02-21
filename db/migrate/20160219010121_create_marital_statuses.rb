class CreateMaritalStatuses < ActiveRecord::Migration
  def change
    create_table :marital_statuses do |t|
      t.string :value

      t.timestamps null: false
    end
  end
end
