require "test_helper"

class RoomClassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @room_class = room_classes(:one)
  end

  test "should get index" do
    get room_classes_url
    assert_response :success
  end

  test "should get new" do
    get new_room_class_url
    assert_response :success
  end

  test "should create room_class" do
    assert_difference("RoomClass.count") do
      post room_classes_url, params: { room_class: { description: @room_class.description, room_class: @room_class.room_class } }
    end

    assert_redirected_to room_class_url(RoomClass.last)
  end

  test "should show room_class" do
    get room_class_url(@room_class)
    assert_response :success
  end

  test "should get edit" do
    get edit_room_class_url(@room_class)
    assert_response :success
  end

  test "should update room_class" do
    patch room_class_url(@room_class), params: { room_class: { description: @room_class.description, room_class: @room_class.room_class } }
    assert_redirected_to room_class_url(@room_class)
  end

  test "should destroy room_class" do
    assert_difference("RoomClass.count", -1) do
      delete room_class_url(@room_class)
    end

    assert_redirected_to room_classes_url
  end
end
