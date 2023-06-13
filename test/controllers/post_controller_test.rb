require "test_helper"

class PostControllerTest < ActionDispatch::IntegrationTest
  test "should get destroy" do
    get post_destroy_url
    assert_response :success
  end
end
