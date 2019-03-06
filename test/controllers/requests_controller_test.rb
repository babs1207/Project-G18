require 'test_helper'

class RequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @request = requests(:one)
  end

  test "should get index" do
    get requests_url
    assert_response :success
  end

  test "should get new" do
    get new_request_url
    assert_response :success
  end

  test "should create request" do
    assert_difference('Request.count') do
      post requests_url, params: { request: { cancelled: @request.cancelled, driver_id: @request.driver_id, end_point: @request.end_point, gps_end_point: @request.gps_end_point, gps_starting_point: @request.gps_starting_point, order_description: @request.order_description, paid: @request.paid, payment_id: @request.payment_id, price: @request.price, starting_point: @request.starting_point, statement_id: @request.statement_id, store_id: @request.store_id, user_id: @request.user_id } }
    end

    assert_redirected_to request_url(Request.last)
  end

  test "should show request" do
    get request_url(@request)
    assert_response :success
  end

  test "should get edit" do
    get edit_request_url(@request)
    assert_response :success
  end

  test "should update request" do
    patch request_url(@request), params: { request: { cancelled: @request.cancelled, driver_id: @request.driver_id, end_point: @request.end_point, gps_end_point: @request.gps_end_point, gps_starting_point: @request.gps_starting_point, order_description: @request.order_description, paid: @request.paid, payment_id: @request.payment_id, price: @request.price, starting_point: @request.starting_point, statement_id: @request.statement_id, store_id: @request.store_id, user_id: @request.user_id } }
    assert_redirected_to request_url(@request)
  end

  test "should destroy request" do
    assert_difference('Request.count', -1) do
      delete request_url(@request)
    end

    assert_redirected_to requests_url
  end
end
