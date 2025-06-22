require "application_system_test_case"

class OrderingInformationsTest < ApplicationSystemTestCase
  setup do
    @ordering_information = ordering_informations(:one)
  end

  test "visiting the index" do
    visit ordering_informations_url
    assert_selector "h1", text: "Ordering information"
  end

  test "should create ordering information" do
    visit ordering_informations_url
    click_on "New ordering information"

    fill_in "Cat no", with: @ordering_information.cat_no
    fill_in "Description", with: @ordering_information.description
    fill_in "Std pack", with: @ordering_information.std_pack
    click_on "Create Ordering information"

    assert_text "Ordering information was successfully created"
    click_on "Back"
  end

  test "should update Ordering information" do
    visit ordering_information_url(@ordering_information)
    click_on "Edit this ordering information", match: :first

    fill_in "Cat no", with: @ordering_information.cat_no
    fill_in "Description", with: @ordering_information.description
    fill_in "Std pack", with: @ordering_information.std_pack
    click_on "Update Ordering information"

    assert_text "Ordering information was successfully updated"
    click_on "Back"
  end

  test "should destroy Ordering information" do
    visit ordering_information_url(@ordering_information)
    click_on "Destroy this ordering information", match: :first

    assert_text "Ordering information was successfully destroyed"
  end
end
