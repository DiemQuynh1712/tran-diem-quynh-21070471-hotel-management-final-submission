require "application_system_test_case"

class RoomClassesTest < ApplicationSystemTestCase
  setup do
    @room_class = room_classes(:one)
  end

  test "visiting the index" do
    visit room_classes_url
    assert_selector "h1", text: "Room classes"
  end

  test "should create room class" do
    visit room_classes_url
    click_on "New room class"

    fill_in "Description", with: @room_class.description
    fill_in "Room class", with: @room_class.room_class
    click_on "Create Room class"

    assert_text "Room class was successfully created"
    click_on "Back"
  end

  test "should update Room class" do
    visit room_class_url(@room_class)
    click_on "Edit this room class", match: :first

    fill_in "Description", with: @room_class.description
    fill_in "Room class", with: @room_class.room_class
    click_on "Update Room class"

    assert_text "Room class was successfully updated"
    click_on "Back"
  end

  test "should destroy Room class" do
    visit room_class_url(@room_class)
    click_on "Destroy this room class", match: :first

    assert_text "Room class was successfully destroyed"
  end
end
