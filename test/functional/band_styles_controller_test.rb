require 'test_helper'

class BandStylesControllerTest < ActionController::TestCase
  setup do
    @band_style = band_styles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:band_styles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create band_style" do
    assert_difference('BandStyle.count') do
      post :create, band_style: { band_id: @band_style.band_id, name: @band_style.name }
    end

    assert_redirected_to band_style_path(assigns(:band_style))
  end

  test "should show band_style" do
    get :show, id: @band_style
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @band_style
    assert_response :success
  end

  test "should update band_style" do
    put :update, id: @band_style, band_style: { band_id: @band_style.band_id, name: @band_style.name }
    assert_redirected_to band_style_path(assigns(:band_style))
  end

  test "should destroy band_style" do
    assert_difference('BandStyle.count', -1) do
      delete :destroy, id: @band_style
    end

    assert_redirected_to band_styles_path
  end
end
