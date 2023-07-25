require "test_helper"

class CategorySearchControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get category_search_index_url
    assert_response :success
  end
end
