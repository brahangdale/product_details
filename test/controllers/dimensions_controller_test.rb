require "test_helper"

class DimensionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dimension = dimensions(:one)
  end

  test "should get index" do
    get dimensions_url
    assert_response :success
  end

  test "should get new" do
    get new_dimension_url
    assert_response :success
  end

  test "should create dimension" do
    assert_difference("Dimension.count") do
      post dimensions_url, params: { dimension: { name: @dimension.name, unit: @dimension.unit } }
    end

    assert_redirected_to dimension_url(Dimension.last)
  end

  test "should show dimension" do
    get dimension_url(@dimension)
    assert_response :success
  end

  test "should get edit" do
    get edit_dimension_url(@dimension)
    assert_response :success
  end

  test "should update dimension" do
    patch dimension_url(@dimension), params: { dimension: { name: @dimension.name, unit: @dimension.unit } }
    assert_redirected_to dimension_url(@dimension)
  end

  test "should destroy dimension" do
    assert_difference("Dimension.count", -1) do
      delete dimension_url(@dimension)
    end

    assert_redirected_to dimensions_url
  end
end
