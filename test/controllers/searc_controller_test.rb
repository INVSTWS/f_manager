require "test_helper"

class SearcControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get searc_index_url
    assert_response :success
  end
end
