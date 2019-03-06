require "application_system_test_case"

class RequestsTest < ApplicationSystemTestCase
  setup do
    @request = requests(:one)
  end

  test "visiting the index" do
    visit requests_url
    assert_selector "h1", text: "Requests"
  end

  test "creating a Request" do
    visit requests_url
    click_on "New Request"

    fill_in "Cancelled", with: @request.cancelled
    fill_in "Driver", with: @request.driver_id
    fill_in "End point", with: @request.end_point
    fill_in "Gps end point", with: @request.gps_end_point
    fill_in "Gps starting", with: @request.gps_starting
    fill_in "Order description", with: @request.order_description
    fill_in "Paid", with: @request.paid
    fill_in "Payment", with: @request.payment_id
    fill_in "Price", with: @request.price
    fill_in "Starting point", with: @request.starting_point
    fill_in "Statement", with: @request.statement_id
    fill_in "Store", with: @request.store_id
    fill_in "User", with: @request.user_id
    click_on "Create Request"

    assert_text "Request was successfully created"
    click_on "Back"
  end

  test "updating a Request" do
    visit requests_url
    click_on "Edit", match: :first

    fill_in "Cancelled", with: @request.cancelled
    fill_in "Driver", with: @request.driver_id
    fill_in "End point", with: @request.end_point
    fill_in "Gps end point", with: @request.gps_end_point
    fill_in "Gps starting", with: @request.gps_starting
    fill_in "Order description", with: @request.order_description
    fill_in "Paid", with: @request.paid
    fill_in "Payment", with: @request.payment_id
    fill_in "Price", with: @request.price
    fill_in "Starting point", with: @request.starting_point
    fill_in "Statement", with: @request.statement_id
    fill_in "Store", with: @request.store_id
    fill_in "User", with: @request.user_id
    click_on "Update Request"

    assert_text "Request was successfully updated"
    click_on "Back"
  end

  test "destroying a Request" do
    visit requests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Request was successfully destroyed"
  end
end
