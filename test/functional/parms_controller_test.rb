require 'test_helper'

class ParmsControllerTest < ActionController::TestCase
  setup do
    @parm = parms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parm" do
    assert_difference('Parm.count') do
      post :create, :parm => @parm.attributes
    end

    assert_redirected_to parm_path(assigns(:parm))
  end

  test "should show parm" do
    get :show, :id => @parm.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @parm.to_param
    assert_response :success
  end

  test "should update parm" do
    put :update, :id => @parm.to_param, :parm => @parm.attributes
    assert_redirected_to parm_path(assigns(:parm))
  end

  test "should destroy parm" do
    assert_difference('Parm.count', -1) do
      delete :destroy, :id => @parm.to_param
    end

    assert_redirected_to parms_path
  end
end
