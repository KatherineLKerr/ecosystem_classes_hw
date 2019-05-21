require("minitest/autorun")
require("minitest/rg")

require_relative("../river")
require_relative("../fish")


class RiverTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("salmon")
    @fish2 = Fish.new("catfish")
    @fish3 = Fish.new("pirahna")

    @Amazon = River.new("Amazon", [@fish1, @fish2, @fish3])
  end

  def test_has_name
    assert_equal("Amazon", @Amazon.name)
  end

  def test_has_fish
    assert_equal([@fish1, @fish2, @fish3], @Amazon.fish)
  end

  def test_lose_fish
    assert_equal([@fish1, @fish2], @Amazon.lose_fish)
  end

  def test_fish_count
    assert_equal(3, @Amazon.fish_count)
  end

end
