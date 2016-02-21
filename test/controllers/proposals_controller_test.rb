require 'test_helper'

class ProposalsControllerTest < ActionController::TestCase
  setup do
    @proposal = proposals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proposals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proposal" do
    assert_difference('Proposal.count') do
      post :create, proposal: { additional_fractionation: @proposal.additional_fractionation, branch_id: @proposal.branch_id, current_insurer_id: @proposal.current_insurer_id, discount_broker: @proposal.discount_broker, discount_technical: @proposal.discount_technical, discount_technical_type_id: @proposal.discount_technical_type_id, end_validity: @proposal.end_validity, endorsement_number: @proposal.endorsement_number, expenses: @proposal.expenses, installment_number: @proposal.installment_number, insurance_policy: @proposal.insurance_policy, iof: @proposal.iof, issue_date: @proposal.issue_date, operation_id: @proposal.operation_id, payment_type_id: @proposal.payment_type_id, person_id: @proposal.person_id, policy_cost: @proposal.policy_cost, previous_endorsement_number: @proposal.previous_endorsement_number, previous_insurance_policy: @proposal.previous_insurance_policy, previous_insurer_id: @proposal.previous_insurer_id, proposal_number: @proposal.proposal_number, start_validity: @proposal.start_validity, susep_id: @proposal.susep_id }
    end

    assert_redirected_to proposal_path(assigns(:proposal))
  end

  test "should show proposal" do
    get :show, id: @proposal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proposal
    assert_response :success
  end

  test "should update proposal" do
    patch :update, id: @proposal, proposal: { additional_fractionation: @proposal.additional_fractionation, branch_id: @proposal.branch_id, current_insurer_id: @proposal.current_insurer_id, discount_broker: @proposal.discount_broker, discount_technical: @proposal.discount_technical, discount_technical_type_id: @proposal.discount_technical_type_id, end_validity: @proposal.end_validity, endorsement_number: @proposal.endorsement_number, expenses: @proposal.expenses, installment_number: @proposal.installment_number, insurance_policy: @proposal.insurance_policy, iof: @proposal.iof, issue_date: @proposal.issue_date, operation_id: @proposal.operation_id, payment_type_id: @proposal.payment_type_id, person_id: @proposal.person_id, policy_cost: @proposal.policy_cost, previous_endorsement_number: @proposal.previous_endorsement_number, previous_insurance_policy: @proposal.previous_insurance_policy, previous_insurer_id: @proposal.previous_insurer_id, proposal_number: @proposal.proposal_number, start_validity: @proposal.start_validity, susep_id: @proposal.susep_id }
    assert_redirected_to proposal_path(assigns(:proposal))
  end

  test "should destroy proposal" do
    assert_difference('Proposal.count', -1) do
      delete :destroy, id: @proposal
    end

    assert_redirected_to proposals_path
  end
end
