class CreateMailingAddresses < ActiveRecord::Migration
  def change
    create_table :mailing_addresses do |t|
      t.string :value

      t.timestamps null: false
    end
  end
end
