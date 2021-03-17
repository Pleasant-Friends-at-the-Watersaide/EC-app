require 'test_helper'

class Customers::OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get customers_orders_new_url
    assert_response :success
  end

  test "should get index" do
    get customers_orders_index_url
    assert_response :success
  end

  test "should get thank" do
    get customers_orders_thank_url
    assert_response :success
  end

end
