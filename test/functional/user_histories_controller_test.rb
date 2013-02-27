require 'test_helper'

class UserHistoriesControllerTest < ActionController::TestCase
  setup do
    @user_history = user_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_history" do
    assert_difference('UserHistory.count') do
      post :create, user_history: { department_id: @user_history.department_id, description: @user_history.description, end_date: @user_history.end_date, institution_id: @user_history.institution_id, start_date: @user_history.start_date, title: @user_history.title, user_id: @user_history.user_id, verification_status: @user_history.verification_status }
    end

    assert_redirected_to user_history_path(assigns(:user_history))
  end

  test "should show user_history" do
    get :show, id: @user_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_history
    assert_response :success
  end

  test "should update user_history" do
    put :update, id: @user_history, user_history: { department_id: @user_history.department_id, description: @user_history.description, end_date: @user_history.end_date, institution_id: @user_history.institution_id, start_date: @user_history.start_date, title: @user_history.title, user_id: @user_history.user_id, verification_status: @user_history.verification_status }
    assert_redirected_to user_history_path(assigns(:user_history))
  end

  test "should destroy user_history" do
    assert_difference('UserHistory.count', -1) do
      delete :destroy, id: @user_history
    end

    assert_redirected_to user_histories_path
  end
end
