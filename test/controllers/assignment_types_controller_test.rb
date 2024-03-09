require "test_helper"

class AssignmentTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assignment_type = assignment_types(:one)
  end

  test "should get index" do
    get assignment_types_url, as: :json
    assert_response :success
  end

  test "should create assignment_type" do
    assert_difference("AssignmentType.count") do
      post assignment_types_url, params: { assignment_type: { title: @assignment_type.title } }, as: :json
    end

    assert_response :created
  end

  test "should show assignment_type" do
    get assignment_type_url(@assignment_type), as: :json
    assert_response :success
  end

  test "should update assignment_type" do
    patch assignment_type_url(@assignment_type), params: { assignment_type: { title: @assignment_type.title } }, as: :json
    assert_response :success
  end

  test "should destroy assignment_type" do
    assert_difference("AssignmentType.count", -1) do
      delete assignment_type_url(@assignment_type), as: :json
    end

    assert_response :no_content
  end
end
