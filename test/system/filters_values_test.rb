require "application_system_test_case"

class FiltersValuesTest < ApplicationSystemTestCase
  setup do
    @filters_value = filters_values(:one)
  end

  test "visiting the index" do
    visit filters_values_url
    assert_selector "h1", text: "Filters Values"
  end

  test "creating a Filters value" do
    visit filters_values_url
    click_on "New Filters Value"

    fill_in "Option", with: @filters_value.option
    click_on "Create Filters value"

    assert_text "Filters value was successfully created"
    click_on "Back"
  end

  test "updating a Filters value" do
    visit filters_values_url
    click_on "Edit", match: :first

    fill_in "Option", with: @filters_value.option
    click_on "Update Filters value"

    assert_text "Filters value was successfully updated"
    click_on "Back"
  end

  test "destroying a Filters value" do
    visit filters_values_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Filters value was successfully destroyed"
  end
end
