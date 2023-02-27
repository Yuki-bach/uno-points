require "test_helper"

class PlayerTest < ActiveSupport::TestCase
  def setup
    @player = Player.new(name: "Example Player", points: 10)
  end
  test "should be valid" do
    assert @player.valid?
  end
end
