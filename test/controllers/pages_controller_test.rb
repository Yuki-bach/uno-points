require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get playing" do
    get pages_playing_url
    assert_response :success
  end

  test "should get result" do
    get pages_result_url
    assert_response :success
  end
end
