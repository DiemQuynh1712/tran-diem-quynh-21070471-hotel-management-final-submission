require "application_system_test_case"

class BookingsTest < ApplicationSystemTestCase
  setup do
    @booking = bookings(:one)
  end

  test "visiting the index" do
    visit bookings_url
    assert_selector "h1", text: "Bookings"
  end

  test "should create booking" do
    visit bookings_url
    click_on "New booking"

    fill_in "Booking no", with: @booking.booking_no
    fill_in "Check in date", with: @booking.check_in_date
    fill_in "Check out date", with: @booking.check_out_date
    fill_in "Customer", with: @booking.customer_id
    fill_in "Num of adults", with: @booking.num_of_adults
    fill_in "Num of children", with: @booking.num_of_children
    fill_in "Num of nights", with: @booking.num_of_nights
    fill_in "Required services", with: @booking.required_services
    fill_in "Room number", with: @booking.room_number
    fill_in "Room type", with: @booking.room_type_id
    click_on "Create Booking"

    assert_text "Booking was successfully created"
    click_on "Back"
  end

  test "should update Booking" do
    visit booking_url(@booking)
    click_on "Edit this booking", match: :first

    fill_in "Booking no", with: @booking.booking_no
    fill_in "Check in date", with: @booking.check_in_date
    fill_in "Check out date", with: @booking.check_out_date
    fill_in "Customer", with: @booking.customer_id
    fill_in "Num of adults", with: @booking.num_of_adults
    fill_in "Num of children", with: @booking.num_of_children
    fill_in "Num of nights", with: @booking.num_of_nights
    fill_in "Required services", with: @booking.required_services
    fill_in "Room number", with: @booking.room_number
    fill_in "Room type", with: @booking.room_type_id
    click_on "Update Booking"

    assert_text "Booking was successfully updated"
    click_on "Back"
  end

  test "should destroy Booking" do
    visit booking_url(@booking)
    click_on "Destroy this booking", match: :first

    assert_text "Booking was successfully destroyed"
  end
end
