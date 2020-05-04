require "application_system_test_case"

class DumiesTest < ApplicationSystemTestCase
  setup do
    @dumy = dumies(:one)
  end

  test "visiting the index" do
    visit dumies_url
    assert_selector "h1", text: "Dumies"
  end

  test "creating a Dumy" do
    visit dumies_url
    click_on "New Dumy"

    click_on "Create Dumy"

    assert_text "Dumy was successfully created"
    click_on "Back"
  end

  test "updating a Dumy" do
    visit dumies_url
    click_on "Edit", match: :first

    click_on "Update Dumy"

    assert_text "Dumy was successfully updated"
    click_on "Back"
  end

  test "destroying a Dumy" do
    visit dumies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dumy was successfully destroyed"
  end
end
