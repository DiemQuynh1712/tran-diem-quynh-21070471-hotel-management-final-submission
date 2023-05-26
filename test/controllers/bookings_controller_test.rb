require "test_helper"

class BookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @booking = bookings(:one)
  end

  test "should get index" do
    get bookings_url
    assert_response :success
  end

  test "should get new" do
    get new_booking_url
    assert_response :success
  end

  test "should create booking" do
    assert_difference("Booking.count") do
      post bookings_url, params: { booking: { booking_no: @booking.booking_no, check_in_date: @booking.check_in_date, check_out_date: @booking.check_out_date, customer_id: @booking.customer_id, num_of_adults: @booking.num_of_adults, num_of_children: @booking.num_of_children, num_of_nights: @booking.num_of_nights, required_services: @booking.required_services, room_number: @booking.room_number, room_type_id: @booking.room_type_id } }
    end

    assert_redirected_to booking_url(Booking.last)
  end

  test "should show booking" do
    get booking_url(@booking)
    assert_response :success
  end

  test "should get edit" do
    get edit_booking_url(@booking)
    assert_response :success
  end

  test "should update booking" do
    patch booking_url(@booking), params: { booking: { booking_no: @booking.booking_no, check_in_date: @booking.check_in_date, check_out_date: @booking.check_out_date, customer_id: @booking.customer_id, num_of_adults: @booking.num_of_adults, num_of_children: @booking.num_of_children, num_of_nights: @booking.num_of_nights, required_services: @booking.required_services, room_number: @booking.room_number, room_type_id: @booking.room_type_id } }
    assert_redirected_to booking_url(@booking)
  end

  test "should destroy booking" do
    assert_difference("Booking.count", -1) do
      delete booking_url(@booking)
    end

    assert_redirected_to bookings_url
  end
end
