require 'test_helper'

class MailingAddressesControllerTest < ActionController::TestCase
  setup do
    @mailing_address = mailing_addresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mailing_addresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mailing_address" do
    assert_difference('MailingAddress.count') do
      post :create, mailing_address: { value: @mailing_address.value }
    end

    assert_redirected_to mailing_address_path(assigns(:mailing_address))
  end

  test "should show mailing_address" do
    get :show, id: @mailing_address
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mailing_address
    assert_response :success
  end

  test "should update mailing_address" do
    patch :update, id: @mailing_address, mailing_address: { value: @mailing_address.value }
    assert_redirected_to mailing_address_path(assigns(:mailing_address))
  end

  test "should destroy mailing_address" do
    assert_difference('MailingAddress.count', -1) do
      delete :destroy, id: @mailing_address
    end

    assert_redirected_to mailing_addresses_path
  end
end
