require 'test_helper'

class InstitutionsControllerTest < ActionController::TestCase
  setup do
    @institution = institutions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:institutions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create institution" do
    assert_difference('Institution.count') do
      post :create, institution: { active: @institution.active, description: @institution.description, email_extention: @institution.email_extention, id: @institution.id, industry_code: @institution.industry_code, linkedin_id: @institution.linkedin_id, name: @institution.name, path_to_logo: @institution.path_to_logo, phone: @institution.phone, street_1: @institution.street_1, street_2: @institution.street_2, zipcode: @institution.zipcode }
    end

    assert_redirected_to institution_path(assigns(:institution))
  end

  test "should show institution" do
    get :show, id: @institution
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @institution
    assert_response :success
  end

  test "should update institution" do
    put :update, id: @institution, institution: { active: @institution.active, description: @institution.description, email_extention: @institution.email_extention, id: @institution.id, industry_code: @institution.industry_code, linkedin_id: @institution.linkedin_id, name: @institution.name, path_to_logo: @institution.path_to_logo, phone: @institution.phone, street_1: @institution.street_1, street_2: @institution.street_2, zipcode: @institution.zipcode }
    assert_redirected_to institution_path(assigns(:institution))
  end

  test "should destroy institution" do
    assert_difference('Institution.count', -1) do
      delete :destroy, id: @institution
    end

    assert_redirected_to institutions_path
  end
end
