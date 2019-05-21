require("minitest/autorun")
require("minitest/rg")

require_relative("../bear")
require_relative("../fish")
require_relative("../river")

class BearTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("salmon")
    @fish2 = Fish.new("catfish")
    @fish3 = Fish.new("pirahna")

    @Amazon = River.new("Amazon", [@fish1, @fish2, @fish3])

    @bear = Bear.new("Yogi", "Grizzly", [])

  end

  def test_has_name
    assert_equal("Yogi", @bear.name)
  end

  def test_has_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_has_stomach
    assert_equal([], @bear.stomach)
  end

  def test_take_fish_from_river
    assert_equal(1, @bear.take_fish_from_river(@Amazon).count)
  end

  def test_roar
    assert_equal("ROAR!", @bear.roar)
  end

  def test_food_count
    bear2 = Bear.new("Baloo", "big bear", [@fish1, @fish2])
    assert_equal(2, bear2.food_count)
  end

end
