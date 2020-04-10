require "application_system_test_case"

class LanguagegenresTest < ApplicationSystemTestCase
  setup do
    @languagegenre = languagegenres(:one)
  end

  test "visiting the index" do
    visit languagegenres_url
    assert_selector "h1", text: "Languagegenres"
  end

  test "creating a Languagegenre" do
    visit languagegenres_url
    click_on "New Languagegenre"

    fill_in "Language genre", with: @languagegenre.language_genre
    click_on "Create Languagegenre"

    assert_text "Languagegenre was successfully created"
    click_on "Back"
  end

  test "updating a Languagegenre" do
    visit languagegenres_url
    click_on "Edit", match: :first

    fill_in "Language genre", with: @languagegenre.language_genre
    click_on "Update Languagegenre"

    assert_text "Languagegenre was successfully updated"
    click_on "Back"
  end

  test "destroying a Languagegenre" do
    visit languagegenres_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Languagegenre was successfully destroyed"
  end
end
