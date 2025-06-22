require "test_helper"

class OrderingInformationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ordering_information = ordering_informations(:one)
  end

  test "should get index" do
    get ordering_informations_url
    assert_response :success
  end

  test "should get new" do
    get new_ordering_information_url
    assert_response :success
  end

  test "should create ordering_information" do
    assert_difference("OrderingInformation.count") do
      post ordering_informations_url, params: { ordering_information: { cat_no: @ordering_information.cat_no, description: @ordering_information.description, std_pack: @ordering_information.std_pack } }
    end

    assert_redirected_to ordering_information_url(OrderingInformation.last)
  end

  test "should show ordering_information" do
    get ordering_information_url(@ordering_information)
    assert_response :success
  end

  test "should get edit" do
    get edit_ordering_information_url(@ordering_information)
    assert_response :success
  end

  test "should update ordering_information" do
    patch ordering_information_url(@ordering_information), params: { ordering_information: { cat_no: @ordering_information.cat_no, description: @ordering_information.description, std_pack: @ordering_information.std_pack } }
    assert_redirected_to ordering_information_url(@ordering_information)
  end

  test "should destroy ordering_information" do
    assert_difference("OrderingInformation.count", -1) do
      delete ordering_information_url(@ordering_information)
    end

    assert_redirected_to ordering_informations_url
  end
end
