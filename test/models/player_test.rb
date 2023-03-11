require "test_helper"

class PlayerTest < ActiveSupport::TestCase
  def setup
    @player = Player.new(name: "Example Player", points: 0)
  end

  test "should be valid" do
    assert @player.valid?
  end

  test "name should be present" do
    @player.name = ""
    assert_not @player.valid?
  end

  test "name should not be too long" do
    @player.name = "a" * 21
    assert_not @player.valid?
  end

  test "name should be unique" do
    duplicate_player = @player.dup
    @player.save
    assert_not duplicate_player.valid?
end
  
end
