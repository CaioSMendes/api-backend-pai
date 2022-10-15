require "test_helper"

class FunctionalitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @functionality = functionalities(:one)
  end

  test "should get index" do
    get functionalities_url, as: :json
    assert_response :success
  end

  test "should create functionality" do
    assert_difference("Functionality.count") do
      post functionalities_url, params: { functionality: { dtIncatu: @functionality.dtIncatu, nameFunctionality: @functionality.nameFunctionality, status: @functionality.status } }, as: :json
    end

    assert_response :created
  end

  test "should show functionality" do
    get functionality_url(@functionality), as: :json
    assert_response :success
  end

  test "should update functionality" do
    patch functionality_url(@functionality), params: { functionality: { dtIncatu: @functionality.dtIncatu, nameFunctionality: @functionality.nameFunctionality, status: @functionality.status } }, as: :json
    assert_response :success
  end

  test "should destroy functionality" do
    assert_difference("Functionality.count", -1) do
      delete functionality_url(@functionality), as: :json
    end

    assert_response :no_content
  end
end
