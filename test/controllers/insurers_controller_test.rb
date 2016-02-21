require 'test_helper'

class InsurersControllerTest < ActionController::TestCase
  setup do
    @insurer = insurers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:insurers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create insurer" do
    assert_difference('Insurer.count') do
      post :create, insurer: { branch_office: @insurer.branch_office, name: @insurer.name, standard_commission: @insurer.standard_commission }
    end

    assert_redirected_to insurer_path(assigns(:insurer))
  end

  test "should show insurer" do
    get :show, id: @insurer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @insurer
    assert_response :success
  end

  test "should update insurer" do
    patch :update, id: @insurer, insurer: { branch_office: @insurer.branch_office, name: @insurer.name, standard_commission: @insurer.standard_commission }
    assert_redirected_to insurer_path(assigns(:insurer))
  end

  test "should destroy insurer" do
    assert_difference('Insurer.count', -1) do
      delete :destroy, id: @insurer
    end

    assert_redirected_to insurers_path
  end
end
