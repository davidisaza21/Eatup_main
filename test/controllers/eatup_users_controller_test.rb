require 'test_helper'

class EatupUsersControllerTest < ActionController::TestCase
  setup do
    @eatup_user = eatup_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eatup_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eatup_user" do
    assert_difference('EatupUser.count') do
      post :create, eatup_user: { email: @eatup_user.email, name: @eatup_user.name, password: @eatup_user.password }
    end

    assert_redirected_to eatup_user_path(assigns(:eatup_user))
  end

  test "should show eatup_user" do
    get :show, id: @eatup_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eatup_user
    assert_response :success
  end

  test "should update eatup_user" do
    patch :update, id: @eatup_user, eatup_user: { email: @eatup_user.email, name: @eatup_user.name, password: @eatup_user.password }
    assert_redirected_to eatup_user_path(assigns(:eatup_user))
  end

  test "should destroy eatup_user" do
    assert_difference('EatupUser.count', -1) do
      delete :destroy, id: @eatup_user
    end

    assert_redirected_to eatup_users_path
  end
end
