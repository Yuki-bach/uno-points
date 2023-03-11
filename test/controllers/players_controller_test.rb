require "test_helper"

class PlayersControllerTest < ActionDispatch::IntegrationTest
  def setup
    @player = players(:one)
  end

  test "should get new" do
    get root_path
    assert_response :success
  end
end
