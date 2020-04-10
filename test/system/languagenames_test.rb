require "application_system_test_case"

class LanguagenamesTest < ApplicationSystemTestCase
  setup do
    @languagename = languagenames(:one)
  end

  test "visiting the index" do
    visit languagenames_url
    assert_selector "h1", text: "Languagenames"
  end

  test "creating a Languagename" do
    visit languagenames_url
    click_on "New Languagename"

    fill_in "Language name", with: @languagename.language_name
    click_on "Create Languagename"

    assert_text "Languagename was successfully created"
    click_on "Back"
  end

  test "updating a Languagename" do
    visit languagenames_url
    click_on "Edit", match: :first

    fill_in "Language name", with: @languagename.language_name
    click_on "Update Languagename"

    assert_text "Languagename was successfully updated"
    click_on "Back"
  end

  test "destroying a Languagename" do
    visit languagenames_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Languagename was successfully destroyed"
  end
end
