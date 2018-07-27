require("minitest/autorun")
require("minitest/rg")

require_relative("../guest.rb")

class GuestTest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("El Guapo")
  end

  def test_has_name()
    assert_equal("El Guapo", @guest1.name())
  end

end
