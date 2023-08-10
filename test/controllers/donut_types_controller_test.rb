require "test_helper"

class DonutTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @donut_type = donut_types(:one)
  end

  test "should get index" do
    get donut_types_url
    assert_response :success
  end

  test "should get new" do
    get new_donut_type_url
    assert_response :success
  end

  test "should create donut_type" do
    assert_difference("DonutType.count") do
      post donut_types_url, params: { donut_type: { discontinued: @donut_type.discontinued, name: @donut_type.name, price: @donut_type.price, sold_out_until: @donut_type.sold_out_until } }
    end

    assert_redirected_to donut_type_url(DonutType.last)
  end

  test "should show donut_type" do
    get donut_type_url(@donut_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_donut_type_url(@donut_type)
    assert_response :success
  end

  test "should update donut_type" do
    patch donut_type_url(@donut_type), params: { donut_type: { discontinued: @donut_type.discontinued, name: @donut_type.name, price: @donut_type.price, sold_out_until: @donut_type.sold_out_until } }
    assert_redirected_to donut_type_url(@donut_type)
  end
end
