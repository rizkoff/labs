require 'test_helper'

class PrmsControllerTest < ActionController::TestCase
  setup do
    @prm = prms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prm" do
    assert_difference('Prm.count') do
      post :create, :prm => @prm.attributes
    end

    assert_redirected_to prm_path(assigns(:prm))
  end

  test "should show prm" do
    get :show, :id => @prm.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @prm.to_param
    assert_response :success
  end

  test "should update prm" do
    put :update, :id => @prm.to_param, :prm => @prm.attributes
    assert_redirected_to prm_path(assigns(:prm))
  end

  test "should destroy prm" do
    assert_difference('Prm.count', -1) do
      delete :destroy, :id => @prm.to_param
    end

    assert_redirected_to prms_path
  end
end
