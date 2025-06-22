require "application_system_test_case"

class DimensionsTest < ApplicationSystemTestCase
  setup do
    @dimension = dimensions(:one)
  end

  test "visiting the index" do
    visit dimensions_url
    assert_selector "h1", text: "Dimensions"
  end

  test "should create dimension" do
    visit dimensions_url
    click_on "New dimension"

    fill_in "Name", with: @dimension.name
    fill_in "Unit", with: @dimension.unit
    click_on "Create Dimension"

    assert_text "Dimension was successfully created"
    click_on "Back"
  end

  test "should update Dimension" do
    visit dimension_url(@dimension)
    click_on "Edit this dimension", match: :first

    fill_in "Name", with: @dimension.name
    fill_in "Unit", with: @dimension.unit
    click_on "Update Dimension"

    assert_text "Dimension was successfully updated"
    click_on "Back"
  end

  test "should destroy Dimension" do
    visit dimension_url(@dimension)
    click_on "Destroy this dimension", match: :first

    assert_text "Dimension was successfully destroyed"
  end
end
