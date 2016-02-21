class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.references :person, index: true, foreign_key: true
      t.integer :current_insurer_id
      t.references :susep, index: true, foreign_key: true
      t.references :branch, index: true, foreign_key: true
      t.date :start_validity
      t.date :end_validity
      t.date :issue_date
      t.references :operation, index: true, foreign_key: true
      t.string :proposal_number
      t.string :insurance_policy
      t.string :endorsement_number
      t.integer :previous_insurer_id
      t.string :previous_insurance_policy
      t.string :previous_endorsement_number
      t.decimal :policy_cost
      t.decimal :iof
      t.decimal :additional_fractionation
      t.decimal :expenses
      t.references :discount_technical_type, index: true, foreign_key: true
      t.decimal :discount_technical
      t.decimal :discount_broker
      t.integer :installment_number
      t.references :payment_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
