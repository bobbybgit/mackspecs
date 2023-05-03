require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get dash" do
    get pages_dash_url
    assert_response :success
  end
end
