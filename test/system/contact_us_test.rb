require "application_system_test_case"

class ContactUsTest < ApplicationSystemTestCase
  setup do
    @contact_u = contact_us(:one)
  end

  test "visiting the index" do
    visit contact_us_url
    assert_selector "h1", text: "Contact us"
  end

  test "should create contact u" do
    visit contact_us_url
    click_on "New contact u"

    fill_in "Information", with: @contact_u.information
    fill_in "Via", with: @contact_u.via
    click_on "Create Contact u"

    assert_text "Contact u was successfully created"
    click_on "Back"
  end

  test "should update Contact u" do
    visit contact_u_url(@contact_u)
    click_on "Edit this contact u", match: :first

    fill_in "Information", with: @contact_u.information
    fill_in "Via", with: @contact_u.via
    click_on "Update Contact u"

    assert_text "Contact u was successfully updated"
    click_on "Back"
  end

  test "should destroy Contact u" do
    visit contact_u_url(@contact_u)
    click_on "Destroy this contact u", match: :first

    assert_text "Contact u was successfully destroyed"
  end
end
