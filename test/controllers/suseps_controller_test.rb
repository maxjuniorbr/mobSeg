require 'test_helper'

class SusepsControllerTest < ActionController::TestCase
  setup do
    @susep = suseps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:suseps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create susep" do
    assert_difference('Susep.count') do
      post :create, susep: { insurer_id: @susep.insurer_id, person_id: @susep.person_id, value: @susep.value }
    end

    assert_redirected_to susep_path(assigns(:susep))
  end

  test "should show susep" do
    get :show, id: @susep
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @susep
    assert_response :success
  end

  test "should update susep" do
    patch :update, id: @susep, susep: { insurer_id: @susep.insurer_id, person_id: @susep.person_id, value: @susep.value }
    assert_redirected_to susep_path(assigns(:susep))
  end

  test "should destroy susep" do
    assert_difference('Susep.count', -1) do
      delete :destroy, id: @susep
    end

    assert_redirected_to suseps_path
  end
end
