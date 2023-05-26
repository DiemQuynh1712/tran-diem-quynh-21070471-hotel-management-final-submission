require "application_system_test_case"

class RoomtypesTest < ApplicationSystemTestCase
  setup do
    @roomtype = roomtypes(:one)
  end

  test "visiting the index" do
    visit roomtypes_url
    assert_selector "h1", text: "Roomtypes"
  end

  test "should create roomtype" do
    visit roomtypes_url
    click_on "New roomtype"

    fill_in "Description", with: @roomtype.description
    fill_in "Name", with: @roomtype.name
    fill_in "Price per night", with: @roomtype.price_per_night
    fill_in "Room class", with: @roomtype.room_class_id
    fill_in "Room size", with: @roomtype.room_size
    click_on "Create Roomtype"

    assert_text "Roomtype was successfully created"
    click_on "Back"
  end

  test "should update Roomtype" do
    visit roomtype_url(@roomtype)
    click_on "Edit this roomtype", match: :first

    fill_in "Description", with: @roomtype.description
    fill_in "Name", with: @roomtype.name
    fill_in "Price per night", with: @roomtype.price_per_night
    fill_in "Room class", with: @roomtype.room_class_id
    fill_in "Room size", with: @roomtype.room_size
    click_on "Update Roomtype"

    assert_text "Roomtype was successfully updated"
    click_on "Back"
  end

  test "should destroy Roomtype" do
    visit roomtype_url(@roomtype)
    click_on "Destroy this roomtype", match: :first

    assert_text "Roomtype was successfully destroyed"
  end
end
