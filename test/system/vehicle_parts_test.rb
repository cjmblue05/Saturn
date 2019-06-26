require "application_system_test_case"

class VehiclePartsTest < ApplicationSystemTestCase
  setup do
    @vehicle_part = vehicle_parts(:one)
  end

  test "visiting the index" do
    visit vehicle_parts_url
    assert_selector "h1", text: "Vehicle Parts"
  end

  test "creating a Vehicle part" do
    visit vehicle_parts_url
    click_on "New Vehicle Part"

    fill_in "Part", with: @vehicle_part.part_id
    fill_in "Vehicle", with: @vehicle_part.vehicle_id
    click_on "Create Vehicle part"

    assert_text "Vehicle part was successfully created"
    click_on "Back"
  end

  test "updating a Vehicle part" do
    visit vehicle_parts_url
    click_on "Edit", match: :first

    fill_in "Part", with: @vehicle_part.part_id
    fill_in "Vehicle", with: @vehicle_part.vehicle_id
    click_on "Update Vehicle part"

    assert_text "Vehicle part was successfully updated"
    click_on "Back"
  end

  test "destroying a Vehicle part" do
    visit vehicle_parts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vehicle part was successfully destroyed"
  end
end
