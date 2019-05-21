class Bear
  attr_reader :name, :type, :stomach

  def initialize(name, type, stomach)
    @name = name
    @type = type
    @stomach = stomach
  end

  def take_fish_from_river(river)
    @stomach << river.lose_fish
  end

  def roar
    return "ROAR!"
  end

  def food_count
    return @stomach.count
  end

end
