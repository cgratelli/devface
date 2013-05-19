require 'test_helper'

class BandMembersControllerTest < ActionController::TestCase
  setup do
    @band_member = band_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:band_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create band_member" do
    assert_difference('BandMember.count') do
      post :create, band_member: { band_id: @band_member.band_id, band_style_id: @band_member.band_style_id, user_id: @band_member.user_id }
    end

    assert_redirected_to band_member_path(assigns(:band_member))
  end

  test "should show band_member" do
    get :show, id: @band_member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @band_member
    assert_response :success
  end

  test "should update band_member" do
    put :update, id: @band_member, band_member: { band_id: @band_member.band_id, band_style_id: @band_member.band_style_id, user_id: @band_member.user_id }
    assert_redirected_to band_member_path(assigns(:band_member))
  end

  test "should destroy band_member" do
    assert_difference('BandMember.count', -1) do
      delete :destroy, id: @band_member
    end

    assert_redirected_to band_members_path
  end
end
