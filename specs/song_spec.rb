require("minitest/autorun")
require("minitest/rg")

require_relative("../song")

class SongTest < MiniTest::Test

  def setup()
    @song1 = Song.new("Take On Me")
  end

  def test_has_name
  assert_equal("Take On Me", @song1.name())
  end

end
