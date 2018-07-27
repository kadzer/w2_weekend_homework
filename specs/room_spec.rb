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

  def test_has_name()
    assert_equal("80's greatest", @room1.name)
  end

  def test_count_songs()
    assert_equal(2, @room1.count_songs())
  end

  def test_guest_check_in()
    guest = "Ned Nederlander"
    @room1.check_in_guest(guest)
    assert_equal(3, @room1.count_guests())
  end

  def test_add_songs()
    song1 = ("Girls Just Wanna Have Fun")
    song2 = ("When Doves Cry")
    @room1.add_song(song1)
    @room1.add_song(song2)
    assert_equal(4, @room1.count_songs())
  end
end
