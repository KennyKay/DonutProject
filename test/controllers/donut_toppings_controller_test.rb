require "test_helper"

class DonutToppingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @donut_topping = donut_toppings(:one)
  end

  test "should get index" do
    get donut_toppings_url
    assert_response :success
  end

  test "should get new" do
    get new_donut_topping_url
    assert_response :success
  end

  test "should create donut_topping" do
    assert_difference("DonutTopping.count") do
      post donut_toppings_url, params: { donut_topping: {  } }
    end

    assert_redirected_to donut_topping_url(DonutTopping.last)
  end

  test "should show donut_topping" do
    get donut_topping_url(@donut_topping)
    assert_response :success
  end

  test "should get edit" do
    get edit_donut_topping_url(@donut_topping)
    assert_response :success
  end

  test "should update donut_topping" do
    patch donut_topping_url(@donut_topping), params: { donut_topping: {  } }
    assert_redirected_to donut_topping_url(@donut_topping)
  end

  test "should destroy donut_topping" do
    assert_difference("DonutTopping.count", -1) do
      delete donut_topping_url(@donut_topping)
    end

    assert_redirected_to donut_toppings_url
  end
end
