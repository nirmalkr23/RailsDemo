require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get sign_up" do
    get pages_sign_up_url
    assert_response :success
  end

  test "should get login" do
    get pages_login_url
    assert_response :success
  end
end
