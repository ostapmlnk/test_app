require 'test_helper'

class FiltersValuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @filters_value = filters_values(:one)
  end

  test "should get index" do
    get filters_values_url
    assert_response :success
  end

  test "should get new" do
    get new_filters_value_url
    assert_response :success
  end

  test "should create filters_value" do
    assert_difference('FiltersValue.count') do
      post filters_values_url, params: { filters_value: { option: @filters_value.option } }
    end

    assert_redirected_to filters_value_url(FiltersValue.last)
  end

  test "should show filters_value" do
    get filters_value_url(@filters_value)
    assert_response :success
  end

  test "should get edit" do
    get edit_filters_value_url(@filters_value)
    assert_response :success
  end

  test "should update filters_value" do
    patch filters_value_url(@filters_value), params: { filters_value: { option: @filters_value.option } }
    assert_redirected_to filters_value_url(@filters_value)
  end

  test "should destroy filters_value" do
    assert_difference('FiltersValue.count', -1) do
      delete filters_value_url(@filters_value)
    end

    assert_redirected_to filters_values_url
  end
end
