require 'test_helper'

class DiscountTechnicalTypesControllerTest < ActionController::TestCase
  setup do
    @discount_technical_type = discount_technical_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:discount_technical_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create discount_technical_type" do
    assert_difference('DiscountTechnicalType.count') do
      post :create, discount_technical_type: { value: @discount_technical_type.value }
    end

    assert_redirected_to discount_technical_type_path(assigns(:discount_technical_type))
  end

  test "should show discount_technical_type" do
    get :show, id: @discount_technical_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @discount_technical_type
    assert_response :success
  end

  test "should update discount_technical_type" do
    patch :update, id: @discount_technical_type, discount_technical_type: { value: @discount_technical_type.value }
    assert_redirected_to discount_technical_type_path(assigns(:discount_technical_type))
  end

  test "should destroy discount_technical_type" do
    assert_difference('DiscountTechnicalType.count', -1) do
      delete :destroy, id: @discount_technical_type
    end

    assert_redirected_to discount_technical_types_path
  end
end
