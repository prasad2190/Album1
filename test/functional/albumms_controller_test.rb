require 'test_helper'

class AlbummsControllerTest < ActionController::TestCase
  setup do
    @albumm = albumms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:albumms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create albumm" do
    assert_difference('Albumm.count') do
      post :create, albumm: { descripton: @albumm.descripton, image: @albumm.image, name: @albumm.name }
    end

    assert_redirected_to albumm_path(assigns(:albumm))
  end

  test "should show albumm" do
    get :show, id: @albumm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @albumm
    assert_response :success
  end

  test "should update albumm" do
    put :update, id: @albumm, albumm: { descripton: @albumm.descripton, image: @albumm.image, name: @albumm.name }
    assert_redirected_to albumm_path(assigns(:albumm))
  end

  test "should destroy albumm" do
    assert_difference('Albumm.count', -1) do
      delete :destroy, id: @albumm
    end

    assert_redirected_to albumms_path
  end
end
