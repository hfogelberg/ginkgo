require 'test_helper'

class OrderInfosControllerTest < ActionController::TestCase
  setup do
    @order_info = order_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_info" do
    assert_difference('OrderInfo.count') do
      post :create, order_info: {  }
    end

    assert_redirected_to order_info_path(assigns(:order_info))
  end

  test "should show order_info" do
    get :show, id: @order_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order_info
    assert_response :success
  end

  test "should update order_info" do
    patch :update, id: @order_info, order_info: {  }
    assert_redirected_to order_info_path(assigns(:order_info))
  end

  test "should destroy order_info" do
    assert_difference('OrderInfo.count', -1) do
      delete :destroy, id: @order_info
    end

    assert_redirected_to order_infos_path
  end
end
