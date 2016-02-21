require 'test_helper'

class PeopleControllerTest < ActionController::TestCase
  setup do
    @person = people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create person" do
    assert_difference('Person.count') do
      post :create, person: { accept_email: @person.accept_email, birth: @person.birth, contact: @person.contact, exposed_name: @person.exposed_name, gender_id: @person.gender_id, marital_status_id: @person.marital_status_id, metier_id: @person.metier_id, name: @person.name, occupation_id: @person.occupation_id, person_type_id: @person.person_type_id, politically_exposed_person: @person.politically_exposed_person, salary_range_id: @person.salary_range_id }
    end

    assert_redirected_to person_path(assigns(:person))
  end

  test "should show person" do
    get :show, id: @person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @person
    assert_response :success
  end

  test "should update person" do
    patch :update, id: @person, person: { accept_email: @person.accept_email, birth: @person.birth, contact: @person.contact, exposed_name: @person.exposed_name, gender_id: @person.gender_id, marital_status_id: @person.marital_status_id, metier_id: @person.metier_id, name: @person.name, occupation_id: @person.occupation_id, person_type_id: @person.person_type_id, politically_exposed_person: @person.politically_exposed_person, salary_range_id: @person.salary_range_id }
    assert_redirected_to person_path(assigns(:person))
  end

  test "should destroy person" do
    assert_difference('Person.count', -1) do
      delete :destroy, id: @person
    end

    assert_redirected_to people_path
  end
end
