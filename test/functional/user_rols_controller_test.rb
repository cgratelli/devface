require 'test_helper'

class UserRolsControllerTest < ActionController::TestCase
  setup do
    @user_rol = user_rols(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_rols)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_rol" do
    assert_difference('UserRol.count') do
      post :create, user_rol: { name: @user_rol.name }
    end

    assert_redirected_to user_rol_path(assigns(:user_rol))
  end

  test "should show user_rol" do
    get :show, id: @user_rol
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_rol
    assert_response :success
  end

  test "should update user_rol" do
    put :update, id: @user_rol, user_rol: { name: @user_rol.name }
    assert_redirected_to user_rol_path(assigns(:user_rol))
  end

  test "should destroy user_rol" do
    assert_difference('UserRol.count', -1) do
      delete :destroy, id: @user_rol
    end

    assert_redirected_to user_rols_path
  end
end
