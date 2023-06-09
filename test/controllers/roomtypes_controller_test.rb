require "test_helper"

class RoomtypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roomtype = roomtypes(:one)
  end

  test "should get index" do
    get roomtypes_url
    assert_response :success
  end

  test "should get new" do
    get new_roomtype_url
    assert_response :success
  end

  test "should create roomtype" do
    assert_difference("Roomtype.count") do
      post roomtypes_url, params: { roomtype: { description: @roomtype.description, name: @roomtype.name, price_per_night: @roomtype.price_per_night, room_class_id: @roomtype.room_class_id, room_size: @roomtype.room_size } }
    end

    assert_redirected_to roomtype_url(Roomtype.last)
  end

  test "should show roomtype" do
    get roomtype_url(@roomtype)
    assert_response :success
  end

  test "should get edit" do
    get edit_roomtype_url(@roomtype)
    assert_response :success
  end

  test "should update roomtype" do
    patch roomtype_url(@roomtype), params: { roomtype: { description: @roomtype.description, name: @roomtype.name, price_per_night: @roomtype.price_per_night, room_class_id: @roomtype.room_class_id, room_size: @roomtype.room_size } }
    assert_redirected_to roomtype_url(@roomtype)
  end

  test "should destroy roomtype" do
    assert_difference("Roomtype.count", -1) do
      delete roomtype_url(@roomtype)
    end

    assert_redirected_to roomtypes_url
  end
end
