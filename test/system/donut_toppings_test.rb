require "application_system_test_case"

class DonutToppingsTest < ApplicationSystemTestCase
  setup do
    @donut_topping = donut_toppings(:one)
  end

  test "visiting the index" do
    visit donut_toppings_url
    assert_selector "h1", text: "Donut toppings"
  end

  test "should create donut topping" do
    visit donut_toppings_url
    click_on "New donut topping"

    click_on "Create Donut topping"

    assert_text "Donut topping was successfully created"
    click_on "Back"
  end

  test "should update Donut topping" do
    visit donut_topping_url(@donut_topping)
    click_on "Edit this donut topping", match: :first

    click_on "Update Donut topping"

    assert_text "Donut topping was successfully updated"
    click_on "Back"
  end

  test "should destroy Donut topping" do
    visit donut_topping_url(@donut_topping)
    click_on "Destroy this donut topping", match: :first

    assert_text "Donut topping was successfully destroyed"
  end
end
