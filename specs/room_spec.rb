require("minitest/autorun")
require("minitest/rg")

require_relative("../room")
require_relative("../song")
require_relative("../guest")

class RoomTest < MiniTest::Test

  def setup()
    @song1 = Song.new("Take On Me")
    @song2 = Song.new("Every Breath You Take")
    @guest1 = Guest.new("Dusty Bottoms")
    @guest2 = Guest.new("El Guapo")
    @guests = [@guest1, @guest2]
    @songs = [@song1, @song2]
    @room1 = Room.new("80's greatest", @songs, @guests)
  end

  def test_room_setup
    assert_equal("80's greatest", @room1.name)
  end

end
