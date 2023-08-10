require "application_system_test_case"

class DonutTypesTest < ApplicationSystemTestCase
  setup do
    @donut_type = donut_types(:one)
  end

  test "visiting the index" do
    visit donut_types_url
    assert_selector "h1", text: "Donut types"
  end

  test "should create donut type" do
    visit donut_types_url
    click_on "New donut type"

    check "Discontinued" if @donut_type.discontinued
    fill_in "Name", with: @donut_type.name
    fill_in "Price", with: @donut_type.price
    fill_in "Sold out until", with: @donut_type.sold_out_until
    click_on "Create Donut type"

    assert_text "Donut type was successfully created"
    click_on "Back"
  end

  test "should update Donut type" do
    visit donut_type_url(@donut_type)
    click_on "Edit this donut type", match: :first

    check "Discontinued" if @donut_type.discontinued
    fill_in "Name", with: @donut_type.name
    fill_in "Price", with: @donut_type.price
    fill_in "Sold out until", with: @donut_type.sold_out_until
    click_on "Update Donut type"

    assert_text "Donut type was successfully updated"
    click_on "Back"
  end

  test "should destroy Donut type" do
    visit donut_type_url(@donut_type)
    click_on "Destroy this donut type", match: :first

    assert_text "Donut type was successfully destroyed"
  end
end
