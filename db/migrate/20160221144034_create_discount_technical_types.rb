class CreateDiscountTechnicalTypes < ActiveRecord::Migration
  def change
    create_table :discount_technical_types do |t|
      t.string :value

      t.timestamps null: false
    end
  end
end
