json.array!(@proposals) do |proposal|
  json.extract! proposal, :id, :person_id, :current_insurer_id, :susep_id, :branch_id, :start_validity, :end_validity, :issue_date, :operation_id, :proposal_number, :insurance_policy, :endorsement_number, :previous_insurer_id, :previous_insurance_policy, :previous_endorsement_number, :policy_cost, :iof, :additional_fractionation, :expenses, :discount_technical_type_id, :discount_technical, :discount_broker, :installment_number, :payment_type_id
  json.url proposal_url(proposal, format: :json)
end
