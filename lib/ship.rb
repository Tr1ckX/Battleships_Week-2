class Ship

  attr_reader :length
  attr_reader :size
  attr_reader :hit_count
  attr_reader :cell_array

  def initialize(length)
    @length = length
    @ship = []
    @sunk = false
    @hit_count = 0
  end

  def size
    @ship.count
  end

  def add(cell_array)
    raise 'UNACCEPTABLE SHIP!' if cell_array.count != length
    @ship = cell_array
  end

  def sunk?
    @sunk
  end

  def hit!(cell)
    raise "Overkill dude!" if sunk?
    @hit_count += 1 if cell.selected? == true
    self.sink! if hit_count == size
  end

  def sink!
    @sunk = true
  end

end