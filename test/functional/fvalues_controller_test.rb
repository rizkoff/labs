require 'test_helper'

class FvaluesControllerTest < ActionController::TestCase
  setup do
    @fvalue = fvalues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fvalues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fvalue" do
    assert_difference('Fvalue.count') do
      post :create, :fvalue => @fvalue.attributes
    end

    assert_redirected_to fvalue_path(assigns(:fvalue))
  end

  test "should show fvalue" do
    get :show, :id => @fvalue.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @fvalue.to_param
    assert_response :success
  end

  test "should update fvalue" do
    put :update, :id => @fvalue.to_param, :fvalue => @fvalue.attributes
    assert_redirected_to fvalue_path(assigns(:fvalue))
  end

  test "should destroy fvalue" do
    assert_difference('Fvalue.count', -1) do
      delete :destroy, :id => @fvalue.to_param
    end

    assert_redirected_to fvalues_path
  end
end
